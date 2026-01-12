import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/buttons/moku_button.dart';
import '../../../../core/widgets/inputs/moku_text_field.dart';
import '../../../../core/providers/auth_provider.dart';
import '../../../../rumi/rumi.dart';

/// ログイン画面
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isSignUp = false;
  String? _errorMessage;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    setState(() => _errorMessage = null);

    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      setState(() => _errorMessage = 'メールアドレスとパスワードを入力してね');
      return;
    }

    try {
      if (_isSignUp) {
        await ref
            .read(authStatusProvider.notifier)
            .signUpWithEmail(email, password);
      } else {
        await ref
            .read(authStatusProvider.notifier)
            .signInWithEmail(email, password);
      }
    } catch (e) {
      setState(() => _errorMessage = 'ログインに失敗したみたい。もう一度試してね。');
    }
  }

  @override
  Widget build(BuildContext context) {
    final authStatus = ref.watch(authStatusProvider);
    final isLoading = authStatus == AuthStatus.loading;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),

              // Rumi
              Center(
                child: const Rumi(
                  size: 120,
                  mood: RumiMood.encouraging,
                ).animate().fadeIn().scale(delay: 200.ms),
              ),

              const SizedBox(height: 24),

              // タイトル
              Text(
                _isSignUp ? 'はじめまして。' : 'おかえりなさい。',
                style: AppTypography.displayMedium.copyWith(
                  color: AppColors.charcoal,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 300.ms),

              const SizedBox(height: 8),

              Text(
                _isSignUp ? 'アカウントを作って、学習を始めよう' : 'ゆっくりしていってね',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.greige,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 400.ms),

              const SizedBox(height: 40),

              // エラーメッセージ
              if (_errorMessage != null)
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: AppColors.dustyPink.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const RumiMini(size: 24),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _errorMessage!,
                          style: AppTypography.bodySmall.copyWith(
                            color: AppColors.charcoal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ).animate().shake(),

              // メールアドレス入力
              MokuTextField(
                controller: _emailController,
                label: 'メールアドレス',
                hint: 'mail@example.com',
                prefixIcon: Icons.mail_outline_rounded,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                enabled: !isLoading,
              ).animate().fadeIn(delay: 500.ms).slideY(begin: 0.1),

              const SizedBox(height: 16),

              // パスワード入力
              MokuTextField(
                controller: _passwordController,
                label: 'パスワード',
                hint: '6文字以上',
                prefixIcon: Icons.lock_outline_rounded,
                obscureText: true,
                textInputAction: TextInputAction.done,
                enabled: !isLoading,
                onSubmitted: (_) => _handleSubmit(),
              ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.1),

              const SizedBox(height: 24),

              // ログイン/サインアップボタン
              MokuButton(
                label: _isSignUp ? 'アカウントを作成' : 'ログイン',
                onPressed: isLoading ? null : _handleSubmit,
                isLoading: isLoading,
                variant: MokuButtonVariant.primary,
                size: MokuButtonSize.large,
              ).animate().fadeIn(delay: 700.ms),

              const SizedBox(height: 16),

              // 切り替えテキスト
              TextButton(
                onPressed: isLoading
                    ? null
                    : () => setState(() => _isSignUp = !_isSignUp),
                child: Text(
                  _isSignUp ? 'すでにアカウントを持ってる？ログイン' : 'はじめて？アカウントを作成',
                  style: AppTypography.labelMedium.copyWith(
                    color: AppColors.greige,
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // または
              Row(
                children: [
                  const Expanded(child: Divider(color: AppColors.greige)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'または',
                      style: AppTypography.labelSmall.copyWith(
                        color: AppColors.greige,
                      ),
                    ),
                  ),
                  const Expanded(child: Divider(color: AppColors.greige)),
                ],
              ),

              const SizedBox(height: 24),

              // ゲストとして続ける
              MokuButton(
                label: 'ゲストとして始める',
                onPressed: isLoading
                    ? null
                    : () {
                        // TODO: ゲストモードでホームへ遷移
                      },
                variant: MokuButtonVariant.ghost,
                icon: Icons.arrow_forward_rounded,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
