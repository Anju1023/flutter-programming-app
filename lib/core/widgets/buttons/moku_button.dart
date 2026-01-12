import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_typography.dart';
import '../../constants/app_constants.dart';

/// moku プライマリボタン
/// 角丸でソフトシャドウ付きのメインボタン
class MokuButton extends StatelessWidget {
  const MokuButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.isLoading = false,
    this.isDisabled = false,
    this.variant = MokuButtonVariant.primary,
    this.size = MokuButtonSize.medium,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isLoading;
  final bool isDisabled;
  final MokuButtonVariant variant;
  final MokuButtonSize size;

  @override
  Widget build(BuildContext context) {
    final isEnabled = !isDisabled && !isLoading && onPressed != null;

    return GestureDetector(
          onTap: isEnabled ? onPressed : null,
          child: AnimatedContainer(
            duration: AppConstants.microDuration,
            padding: _getPadding(),
            decoration: BoxDecoration(
              color: _getBackgroundColor(isEnabled),
              borderRadius: BorderRadius.circular(
                AppConstants.buttonBorderRadius,
              ),
              boxShadow: isEnabled
                  ? [
                      BoxShadow(
                        color: AppColors.shadowColor,
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : null,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isLoading) ...[
                  SizedBox(
                    width: _getIconSize(),
                    height: _getIconSize(),
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: _getTextColor(isEnabled),
                    ),
                  ),
                  SizedBox(width: _getSpacing()),
                ] else if (icon != null) ...[
                  Icon(
                    icon,
                    size: _getIconSize(),
                    color: _getTextColor(isEnabled),
                  ),
                  SizedBox(width: _getSpacing()),
                ],
                Text(
                  label,
                  style: _getTextStyle().copyWith(
                    color: _getTextColor(isEnabled),
                  ),
                ),
              ],
            ),
          ),
        )
        .animate(target: isEnabled ? 1 : 0)
        .scale(
          begin: const Offset(1, 1),
          end: const Offset(0.98, 0.98),
          duration: 100.ms,
        );
  }

  EdgeInsets _getPadding() {
    switch (size) {
      case MokuButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 10);
      case MokuButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 24, vertical: 14);
      case MokuButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32, vertical: 18);
    }
  }

  double _getIconSize() {
    switch (size) {
      case MokuButtonSize.small:
        return 16;
      case MokuButtonSize.medium:
        return 20;
      case MokuButtonSize.large:
        return 24;
    }
  }

  double _getSpacing() {
    switch (size) {
      case MokuButtonSize.small:
        return 6;
      case MokuButtonSize.medium:
        return 8;
      case MokuButtonSize.large:
        return 10;
    }
  }

  TextStyle _getTextStyle() {
    switch (size) {
      case MokuButtonSize.small:
        return AppTypography.labelMedium;
      case MokuButtonSize.medium:
        return AppTypography.labelLarge;
      case MokuButtonSize.large:
        return AppTypography.headlineSmall;
    }
  }

  Color _getBackgroundColor(bool isEnabled) {
    if (!isEnabled) {
      return AppColors.foggyBlue;
    }
    switch (variant) {
      case MokuButtonVariant.primary:
        return AppColors.lavenderGray;
      case MokuButtonVariant.secondary:
        return AppColors.foggyBlue;
      case MokuButtonVariant.success:
        return AppColors.sageGreen;
      case MokuButtonVariant.ghost:
        return AppColors.transparent;
    }
  }

  Color _getTextColor(bool isEnabled) {
    if (!isEnabled) {
      return AppColors.greige;
    }
    return AppColors.charcoal;
  }
}

/// ボタンバリアント
enum MokuButtonVariant { primary, secondary, success, ghost }

/// ボタンサイズ
enum MokuButtonSize { small, medium, large }

/// テキストリンクボタン
class MokuTextButton extends StatelessWidget {
  const MokuTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 16, color: AppColors.charcoal),
              const SizedBox(width: 6),
            ],
            Text(
              label,
              style: AppTypography.labelMedium.copyWith(
                color: AppColors.charcoal,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.greige,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// アイコンボタン
class MokuIconButton extends StatelessWidget {
  const MokuIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = 48,
    this.backgroundColor,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final double size;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.foggyBlue,
          borderRadius: BorderRadius.circular(size / 3),
        ),
        child: Icon(icon, size: size * 0.5, color: AppColors.charcoal),
      ),
    );
  }
}
