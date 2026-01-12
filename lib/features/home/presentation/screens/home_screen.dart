import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../rumi/rumi.dart';

/// ホーム画面
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'おはよう ☁️',
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.greige,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'moku',
                        style: AppTypography.displayMedium.copyWith(
                          color: AppColors.charcoal,
                        ),
                      ),
                    ],
                  ),
                  // プロフィールアイコン
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.foggyBlue,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.person_rounded,
                      color: AppColors.greige,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // Rumi エリア
              Expanded(
                flex: 2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Rumi(size: 180, mood: RumiMood.happy),
                      const SizedBox(height: 16),
                      Text(
                        'いい感じ。今日もゆっくりね。',
                        style: AppTypography.bodyMedium.copyWith(
                          color: AppColors.greige,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // 今日のワーク カード
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.foggyBlue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.sageGreen,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Today',
                            style: AppTypography.labelSmall.copyWith(
                              color: AppColors.charcoal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '3分',
                          style: AppTypography.labelMedium.copyWith(
                            color: AppColors.greige,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '変数ってなんだろう？',
                      style: AppTypography.headlineMedium.copyWith(
                        color: AppColors.charcoal,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'データを入れておく「箱」について学ぼう',
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.greige,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
