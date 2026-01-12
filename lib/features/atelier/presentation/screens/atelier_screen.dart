import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';

/// アトリエ画面
class AtelierScreen extends StatelessWidget {
  const AtelierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ヘッダー
              Text(
                'アトリエ',
                style: AppTypography.displayMedium.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'あなただけの空間。',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.greige,
                ),
              ),

              const SizedBox(height: 32),

              // アトリエビュー（プレースホルダー）
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.foggyBlue,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 窓
                      Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          color: AppColors.lavenderGray,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.wb_sunny_rounded,
                              size: 40,
                              color: AppColors.greige,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '朝の光',
                              style: AppTypography.labelMedium.copyWith(
                                color: AppColors.greige,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // 説明
                      Text(
                        '学習を続けると\n景色が変わるよ',
                        textAlign: TextAlign.center,
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.greige,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // タネ表示
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.sageGreen.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Icon(Icons.eco_rounded, color: AppColors.charcoal),
                    const SizedBox(width: 12),
                    Text(
                      'タネ',
                      style: AppTypography.labelLarge.copyWith(
                        color: AppColors.charcoal,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '12',
                      style: AppTypography.headlineMedium.copyWith(
                        color: AppColors.charcoal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
