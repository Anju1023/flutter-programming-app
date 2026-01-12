import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/buttons/moku_button.dart';
import '../../../../rumi/rumi.dart';

/// ストーリー画面（導入テキスト）
class StoryScreen extends ConsumerWidget {
  const StoryScreen({
    super.key,
    required this.title,
    required this.body,
    this.imageUrl,
    required this.onNext,
  });

  final String title;
  final String body;
  final String? imageUrl;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // 戻るボタン
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close_rounded),
                  color: AppColors.greige,
                ),
              ),

              const Spacer(),

              // Rumi
              const Rumi(
                size: 120,
                mood: RumiMood.neutral,
              ).animate().fadeIn().scale(delay: 200.ms),

              const SizedBox(height: 32),

              // タイトル
              Text(
                title,
                style: AppTypography.headlineMedium.copyWith(
                  color: AppColors.charcoal,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 400.ms),

              const SizedBox(height: 24),

              // 本文
              Text(
                body,
                style: AppTypography.bodyLarge.copyWith(
                  color: AppColors.charcoal,
                  height: 1.8,
                ),
                textAlign: TextAlign.center,
              ).animate().fadeIn(delay: 600.ms),

              const Spacer(),

              // 次へボタン
              MokuButton(
                label: 'つづきを読む',
                onPressed: onNext,
                variant: MokuButtonVariant.primary,
                size: MokuButtonSize.large,
                icon: Icons.arrow_forward_rounded,
              ).animate().fadeIn(delay: 800.ms).slideY(begin: 0.2),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
