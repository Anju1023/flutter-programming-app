import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_typography.dart';

/// ドロップ（雫）表示ウィジェット
class DropBadge extends StatelessWidget {
  const DropBadge({
    super.key,
    required this.amount,
    this.size = DropBadgeSize.medium,
    this.showChange = false,
    this.changeAmount = 0,
  });

  final int amount;
  final DropBadgeSize size;
  final bool showChange;
  final int changeAmount;

  @override
  Widget build(BuildContext context) {
    final config = _getSizeConfig();

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: config.paddingH,
        vertical: config.paddingV,
      ),
      decoration: BoxDecoration(
        color: AppColors.foggyBlue,
        borderRadius: BorderRadius.circular(config.borderRadius),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ドロップアイコン
          Container(
            width: config.iconSize,
            height: config.iconSize,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.lavenderGray, AppColors.foggyBlue],
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.water_drop_rounded,
              size: config.iconSize * 0.6,
              color: AppColors.charcoal,
            ),
          ),
          SizedBox(width: config.spacing),
          // 金額
          Text(
            amount.toString(),
            style: config.textStyle.copyWith(
              color: AppColors.charcoal,
              fontWeight: FontWeight.w600,
            ),
          ),
          // 変化量
          if (showChange && changeAmount != 0) ...[
            const SizedBox(width: 4),
            Text(
              changeAmount > 0 ? '+$changeAmount' : '$changeAmount',
              style: AppTypography.labelSmall.copyWith(
                color: changeAmount > 0
                    ? AppColors.sageGreen
                    : AppColors.dustyPink,
              ),
            ).animate().fadeIn().slideX(begin: -0.2),
          ],
        ],
      ),
    );
  }

  _DropBadgeSizeConfig _getSizeConfig() {
    switch (size) {
      case DropBadgeSize.small:
        return _DropBadgeSizeConfig(
          iconSize: 16,
          paddingH: 8,
          paddingV: 4,
          spacing: 4,
          borderRadius: 12,
          textStyle: AppTypography.labelSmall,
        );
      case DropBadgeSize.medium:
        return _DropBadgeSizeConfig(
          iconSize: 20,
          paddingH: 12,
          paddingV: 6,
          spacing: 6,
          borderRadius: 16,
          textStyle: AppTypography.labelMedium,
        );
      case DropBadgeSize.large:
        return _DropBadgeSizeConfig(
          iconSize: 28,
          paddingH: 16,
          paddingV: 8,
          spacing: 8,
          borderRadius: 20,
          textStyle: AppTypography.headlineSmall,
        );
    }
  }
}

enum DropBadgeSize { small, medium, large }

class _DropBadgeSizeConfig {
  const _DropBadgeSizeConfig({
    required this.iconSize,
    required this.paddingH,
    required this.paddingV,
    required this.spacing,
    required this.borderRadius,
    required this.textStyle,
  });

  final double iconSize;
  final double paddingH;
  final double paddingV;
  final double spacing;
  final double borderRadius;
  final TextStyle textStyle;
}

/// デイズストリーク表示ウィジェット
class StreakBadge extends StatelessWidget {
  const StreakBadge({super.key, required this.days, this.isActive = true});

  final int days;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: isActive ? AppColors.warmBeige : AppColors.foggyBlue,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.local_fire_department_rounded,
            size: 18,
            color: isActive ? Colors.orange : AppColors.greige,
          ),
          const SizedBox(width: 4),
          Text(
            '$days日',
            style: AppTypography.labelMedium.copyWith(
              color: AppColors.charcoal,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

/// 実績カード
class AchievementCard extends StatelessWidget {
  const AchievementCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconName,
    required this.isUnlocked,
    this.dropReward = 0,
    this.onTap,
  });

  final String title;
  final String description;
  final String iconName;
  final bool isUnlocked;
  final int dropReward;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isUnlocked
              ? AppColors.sageGreen.withValues(alpha: 0.3)
              : AppColors.foggyBlue,
          borderRadius: BorderRadius.circular(16),
          border: isUnlocked
              ? Border.all(color: AppColors.sageGreen, width: 2)
              : null,
        ),
        child: Row(
          children: [
            // アイコン
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: isUnlocked
                    ? AppColors.sageGreen
                    : AppColors.greige.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                _getIconData(iconName),
                color: isUnlocked ? AppColors.charcoal : AppColors.greige,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            // テキスト
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTypography.labelLarge.copyWith(
                      color: isUnlocked ? AppColors.charcoal : AppColors.greige,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.greige,
                    ),
                  ),
                ],
              ),
            ),
            // 報酬
            if (dropReward > 0)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: isUnlocked
                      ? AppColors.sageGreen
                      : AppColors.greige.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.water_drop_rounded,
                      size: 12,
                      color: isUnlocked ? AppColors.charcoal : AppColors.greige,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      '+$dropReward',
                      style: AppTypography.labelSmall.copyWith(
                        color: isUnlocked
                            ? AppColors.charcoal
                            : AppColors.greige,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  IconData _getIconData(String name) {
    switch (name) {
      case 'star':
        return Icons.star_rounded;
      case 'code':
        return Icons.code_rounded;
      case 'check_circle':
        return Icons.check_circle_rounded;
      case 'emoji_events':
        return Icons.emoji_events_rounded;
      case 'school':
        return Icons.school_rounded;
      case 'local_fire_department':
        return Icons.local_fire_department_rounded;
      case 'whatshot':
        return Icons.whatshot_rounded;
      case 'celebration':
        return Icons.celebration_rounded;
      case 'folder_special':
        return Icons.folder_special_rounded;
      case 'water_drop':
        return Icons.water_drop_rounded;
      case 'wb_sunny':
        return Icons.wb_sunny_rounded;
      case 'nightlight':
        return Icons.nightlight_rounded;
      default:
        return Icons.emoji_events_rounded;
    }
  }
}
