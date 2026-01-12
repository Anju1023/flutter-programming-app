import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_typography.dart';
import '../../constants/app_constants.dart';

/// moku カードコンポーネント
/// 角丸でソフトな背景のカード
class MokuCard extends StatelessWidget {
  const MokuCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.variant = MokuCardVariant.filled,
    this.isAnimated = true,
  });

  final Widget child;
  final EdgeInsets? padding;
  final VoidCallback? onTap;
  final MokuCardVariant variant;
  final bool isAnimated;

  @override
  Widget build(BuildContext context) {
    Widget card = Container(
      padding: padding ?? const EdgeInsets.all(AppConstants.paddingMedium),
      decoration: BoxDecoration(
        color: _getBackgroundColor(),
        borderRadius: BorderRadius.circular(AppConstants.cardBorderRadius),
        border: variant == MokuCardVariant.outlined
            ? Border.all(color: AppColors.lavenderGray, width: 1)
            : null,
        boxShadow: variant == MokuCardVariant.elevated
            ? [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 16,
                  offset: const Offset(0, 4),
                ),
              ]
            : null,
      ),
      child: child,
    );

    if (onTap != null) {
      card = GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: card,
      );

      if (isAnimated) {
        card = card
            .animate(onPlay: (controller) => controller.stop())
            .custom(builder: (context, value, child) => child);
      }
    }

    return card;
  }

  Color _getBackgroundColor() {
    switch (variant) {
      case MokuCardVariant.filled:
        return AppColors.foggyBlue;
      case MokuCardVariant.outlined:
        return AppColors.white;
      case MokuCardVariant.elevated:
        return AppColors.white;
      case MokuCardVariant.transparent:
        return AppColors.transparent;
    }
  }
}

/// カードバリアント
enum MokuCardVariant { filled, outlined, elevated, transparent }

/// 進捗カード（レッスン用）
class MokuProgressCard extends StatelessWidget {
  const MokuProgressCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progress,
    this.icon,
    this.onTap,
    this.isCompleted = false,
  });

  final String title;
  final String subtitle;
  final double progress;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return MokuCard(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // アイコン / 完了チェック
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: isCompleted
                      ? AppColors.sageGreen
                      : AppColors.lavenderGray,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  isCompleted
                      ? Icons.check_rounded
                      : (icon ?? Icons.play_arrow_rounded),
                  color: AppColors.charcoal,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),

              // タイトルとサブタイトル
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
                    const SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: AppTypography.bodySmall.copyWith(
                        color: AppColors.greige,
                      ),
                    ),
                  ],
                ),
              ),

              // 矢印
              const Icon(Icons.chevron_right_rounded, color: AppColors.greige),
            ],
          ),

          // プログレスバー
          if (progress > 0 && !isCompleted) ...[
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: AppColors.lavenderGray,
                valueColor: const AlwaysStoppedAnimation(AppColors.sageGreen),
                minHeight: 4,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// 統計カード
class MokuStatCard extends StatelessWidget {
  const MokuStatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.color,
  });

  final IconData icon;
  final String value;
  final String label;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return MokuCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color ?? AppColors.greige, size: 24),
          const SizedBox(height: 8),
          Text(
            value,
            style: AppTypography.headlineMedium.copyWith(
              color: AppColors.charcoal,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: AppTypography.labelSmall.copyWith(color: AppColors.greige),
          ),
        ],
      ),
    );
  }
}
