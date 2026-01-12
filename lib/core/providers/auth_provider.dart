import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../services/auth_service.dart';

/// 認証サービスプロバイダー
final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService.instance;
});

/// 現在のユーザープロバイダー
final currentUserProvider = StreamProvider<User?>((ref) {
  return ref
      .watch(authServiceProvider)
      .authStateChanges
      .map((state) => state.session?.user);
});

/// ログイン状態プロバイダー
final isLoggedInProvider = Provider<bool>((ref) {
  return ref.watch(authServiceProvider).isLoggedIn;
});

/// 認証状態
enum AuthStatus { initial, loading, authenticated, unauthenticated, error }

/// 認証状態プロバイダー
final authStatusProvider =
    StateNotifierProvider<AuthStatusNotifier, AuthStatus>((ref) {
      return AuthStatusNotifier(ref);
    });

/// 認証状態の管理
class AuthStatusNotifier extends StateNotifier<AuthStatus> {
  AuthStatusNotifier(this._ref) : super(AuthStatus.initial) {
    _init();
  }

  final Ref _ref;

  void _init() {
    final authService = _ref.read(authServiceProvider);

    // 初期状態を設定
    state = authService.isLoggedIn
        ? AuthStatus.authenticated
        : AuthStatus.unauthenticated;

    // 認証状態の変更を監視
    authService.authStateChanges.listen((authState) {
      if (authState.session != null) {
        state = AuthStatus.authenticated;
      } else {
        state = AuthStatus.unauthenticated;
      }
    });
  }

  /// メールでサインイン
  Future<void> signInWithEmail(String email, String password) async {
    state = AuthStatus.loading;
    try {
      await _ref
          .read(authServiceProvider)
          .signInWithEmail(email: email, password: password);
      state = AuthStatus.authenticated;
    } catch (e) {
      state = AuthStatus.error;
      rethrow;
    }
  }

  /// メールでサインアップ
  Future<void> signUpWithEmail(String email, String password) async {
    state = AuthStatus.loading;
    try {
      await _ref
          .read(authServiceProvider)
          .signUpWithEmail(email: email, password: password);
      state = AuthStatus.authenticated;
    } catch (e) {
      state = AuthStatus.error;
      rethrow;
    }
  }

  /// サインアウト
  Future<void> signOut() async {
    state = AuthStatus.loading;
    try {
      await _ref.read(authServiceProvider).signOut();
      state = AuthStatus.unauthenticated;
    } catch (e) {
      state = AuthStatus.error;
      rethrow;
    }
  }
}
