import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';

/// レッスン画面
class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

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
                'レッスン',
                style: AppTypography.displayMedium.copyWith(
                  color: AppColors.charcoal,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'あなたのペースで、ゆっくりと。',
                style: AppTypography.bodyMedium.copyWith(
                  color: AppColors.greige,
                ),
              ),

              const SizedBox(height: 24),

              // レッスンリスト
              Expanded(
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final lessons = [
                      ('01', 'はじめの一歩', '3分', true),
                      ('02', '変数ってなんだろう？', '5分', true),
                      ('03', '文字を表示してみよう', '4分', false),
                      ('04', '計算をしてみよう', '5分', false),
                      ('05', '条件で分けてみよう', '6分', false),
                    ];
                    final lesson = lessons[index];

                    return _LessonCard(
                      number: lesson.$1,
                      title: lesson.$2,
                      duration: lesson.$3,
                      isCompleted: lesson.$4,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// レッスンカード
class _LessonCard extends StatelessWidget {
  const _LessonCard({
    required this.number,
    required this.title,
    required this.duration,
    required this.isCompleted,
  });

  final String number;
  final String title;
  final String duration;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.foggyBlue,
        borderRadius: BorderRadius.circular(16),
        border: isCompleted
            ? Border.all(color: AppColors.sageGreen, width: 2)
            : null,
      ),
      child: Row(
        children: [
          // 番号
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: isCompleted ? AppColors.sageGreen : AppColors.lavenderGray,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: isCompleted
                  ? const Icon(
                      Icons.check_rounded,
                      color: AppColors.charcoal,
                      size: 20,
                    )
                  : Text(
                      number,
                      style: AppTypography.labelLarge.copyWith(
                        color: AppColors.charcoal,
                      ),
                    ),
            ),
          ),
          const SizedBox(width: 16),

          // タイトル
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.headlineSmall.copyWith(
                    color: AppColors.charcoal,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  duration,
                  style: AppTypography.labelSmall.copyWith(
                    color: AppColors.greige,
                  ),
                ),
              ],
            ),
          ),

          // 矢印
          Icon(Icons.chevron_right_rounded, color: AppColors.greige),
        ],
      ),
    );
  }
}
