import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// 認証サービス
/// Supabase Auth を使用したユーザー認証を管理
class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();

  /// Supabase クライアント
  SupabaseClient get _client => Supabase.instance.client;

  /// 現在のユーザー
  User? get currentUser => _client.auth.currentUser;

  /// ログイン中かどうか
  bool get isLoggedIn => currentUser != null;

  /// 認証状態の変更を監視
  Stream<AuthState> get authStateChanges => _client.auth.onAuthStateChange;

  // ========== メール認証 ==========

  /// メールアドレスとパスワードでサインアップ
  Future<AuthResponse> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client.auth.signUp(
        email: email,
        password: password,
      );
      return response;
    } catch (e) {
      debugPrint('SignUp Error: $e');
      rethrow;
    }
  }

  /// メールアドレスとパスワードでサインイン
  Future<AuthResponse> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client.auth.signInWithPassword(
        email: email,
        password: password,
      );
      return response;
    } catch (e) {
      debugPrint('SignIn Error: $e');
      rethrow;
    }
  }

  // ========== マジックリンク ==========

  /// マジックリンクを送信
  Future<void> sendMagicLink({required String email}) async {
    try {
      await _client.auth.signInWithOtp(
        email: email,
        emailRedirectTo: kIsWeb ? null : 'com.moku.app://login-callback',
      );
    } catch (e) {
      debugPrint('Magic Link Error: $e');
      rethrow;
    }
  }

  // ========== OAuth ==========

  /// Google でサインイン
  Future<bool> signInWithGoogle() async {
    try {
      return await _client.auth.signInWithOAuth(
        OAuthProvider.google,
        redirectTo: kIsWeb ? null : 'com.moku.app://login-callback',
      );
    } catch (e) {
      debugPrint('Google SignIn Error: $e');
      rethrow;
    }
  }

  /// Apple でサインイン
  Future<bool> signInWithApple() async {
    try {
      return await _client.auth.signInWithOAuth(
        OAuthProvider.apple,
        redirectTo: kIsWeb ? null : 'com.moku.app://login-callback',
      );
    } catch (e) {
      debugPrint('Apple SignIn Error: $e');
      rethrow;
    }
  }

  // ========== セッション管理 ==========

  /// サインアウト
  Future<void> signOut() async {
    try {
      await _client.auth.signOut();
    } catch (e) {
      debugPrint('SignOut Error: $e');
      rethrow;
    }
  }

  /// パスワードリセットメールを送信
  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _client.auth.resetPasswordForEmail(email);
    } catch (e) {
      debugPrint('Password Reset Error: $e');
      rethrow;
    }
  }

  /// 現在のセッションを取得
  Session? get currentSession => _client.auth.currentSession;

  /// セッションをリフレッシュ
  Future<AuthResponse> refreshSession() async {
    try {
      return await _client.auth.refreshSession();
    } catch (e) {
      debugPrint('Refresh Session Error: $e');
      rethrow;
    }
  }
}
