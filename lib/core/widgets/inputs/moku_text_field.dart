import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_typography.dart';
import '../../constants/app_constants.dart';

/// moku テキスト入力フィールド
class MokuTextField extends StatefulWidget {
  const MokuTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.errorText,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.onSubmitted,
    this.obscureText = false,
    this.maxLines = 1,
    this.enabled = true,
    this.autofocus = false,
    this.keyboardType,
    this.textInputAction,
  });

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? errorText;
  final String? helperText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final bool obscureText;
  final int maxLines;
  final bool enabled;
  final bool autofocus;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;

  @override
  State<MokuTextField> createState() => _MokuTextFieldState();
}

class _MokuTextFieldState extends State<MokuTextField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final hasError = widget.errorText != null;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // ラベル
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: AppTypography.labelMedium.copyWith(
              color: hasError ? AppColors.dustyPink : AppColors.charcoal,
            ),
          ),
          const SizedBox(height: 8),
        ],

        // テキストフィールド
        AnimatedContainer(
          duration: AppConstants.microDuration,
          decoration: BoxDecoration(
            color: widget.enabled ? AppColors.white : AppColors.foggyBlue,
            borderRadius: BorderRadius.circular(AppConstants.inputBorderRadius),
            border: Border.all(
              color: _getBorderColor(hasError),
              width: _isFocused ? 2 : 1,
            ),
          ),
          child: TextField(
            controller: widget.controller,
            focusNode: _focusNode,
            obscureText: widget.obscureText,
            maxLines: widget.maxLines,
            enabled: widget.enabled,
            autofocus: widget.autofocus,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            onChanged: widget.onChanged,
            onSubmitted: widget.onSubmitted,
            style: AppTypography.bodyLarge.copyWith(color: AppColors.charcoal),
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: AppTypography.bodyMedium.copyWith(
                color: AppColors.greige,
              ),
              prefixIcon: widget.prefixIcon != null
                  ? Icon(widget.prefixIcon, color: AppColors.greige, size: 20)
                  : null,
              suffixIcon: widget.suffixIcon,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppConstants.paddingMedium,
                vertical: AppConstants.paddingMedium,
              ),
            ),
          ),
        ),

        // ヘルパーテキスト / エラーテキスト
        if (widget.helperText != null || hasError) ...[
          const SizedBox(height: 6),
          Text(
            hasError ? widget.errorText! : widget.helperText!,
            style: AppTypography.labelSmall.copyWith(
              color: hasError ? AppColors.dustyPink : AppColors.greige,
            ),
          ),
        ],
      ],
    );
  }

  Color _getBorderColor(bool hasError) {
    if (hasError) return AppColors.dustyPink;
    if (_isFocused) return AppColors.lavenderGray;
    return AppColors.greige;
  }
}

/// 検索フィールド
class MokuSearchField extends StatelessWidget {
  const MokuSearchField({
    super.key,
    this.controller,
    this.hint = '検索...',
    this.onChanged,
    this.onSubmitted,
  });

  final TextEditingController? controller;
  final String hint;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.foggyBlue,
        borderRadius: BorderRadius.circular(AppConstants.inputBorderRadius),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        style: AppTypography.bodyMedium.copyWith(color: AppColors.charcoal),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTypography.bodyMedium.copyWith(color: AppColors.greige),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: AppColors.greige,
            size: 20,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppConstants.paddingMedium,
            vertical: 12,
          ),
        ),
      ),
    );
  }
}
