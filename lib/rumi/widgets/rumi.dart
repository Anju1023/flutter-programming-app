import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/constants/app_colors.dart';

/// Rumi - moku のマスコットキャラクター
/// 雲のような、マシュマロのような抽象的なフォルム
/// 先生ではなく「ルームメイト」的存在
class Rumi extends StatefulWidget {
  const Rumi({
    super.key,
    this.size = 200,
    this.mood = RumiMood.neutral,
    this.isAnimated = true,
  });

  final double size;
  final RumiMood mood;
  final bool isAnimated;

  @override
  State<Rumi> createState() => _RumiState();
}

class _RumiState extends State<Rumi> with SingleTickerProviderStateMixin {
  late AnimationController _floatController;
  late Animation<double> _floatAnimation;

  @override
  void initState() {
    super.initState();
    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _floatAnimation = Tween<double>(begin: -8, end: 8).animate(
      CurvedAnimation(parent: _floatController, curve: Curves.easeInOut),
    );

    if (widget.isAnimated) {
      _floatController.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _floatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _floatAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _floatAnimation.value),
          child: child,
        );
      },
      child: _buildRumi(),
    );
  }

  Widget _buildRumi() {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // メインボディ（雲の形）
          _buildBody(),

          // 顔（ミニマルな点目）
          _buildFace(),

          // ほっぺ（ムード時）
          if (widget.mood == RumiMood.happy || widget.mood == RumiMood.proud)
            _buildBlush(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    final bodyColor = _getBodyColor();

    return Container(
      width: widget.size * 0.85,
      height: widget.size * 0.75,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: const Alignment(-0.3, -0.3),
          radius: 1.2,
          colors: [bodyColor.withValues(alpha: 0.9), bodyColor],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(widget.size * 0.4),
          topRight: Radius.circular(widget.size * 0.45),
          bottomLeft: Radius.circular(widget.size * 0.35),
          bottomRight: Radius.circular(widget.size * 0.38),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
    );
  }

  Widget _buildFace() {
    final eyeSize = widget.size * 0.04;
    final eyeSpacing = widget.size * 0.12;
    final eyeOffset = _getEyeOffset();

    return Positioned(
      top: widget.size * 0.35 + eyeOffset.dy,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 左目
          _buildEye(eyeSize),
          SizedBox(width: eyeSpacing),
          // 右目
          _buildEye(eyeSize),
        ],
      ),
    );
  }

  Widget _buildEye(double size) {
    if (widget.mood == RumiMood.sleepy || widget.mood == RumiMood.tired) {
      // 眠そうな目（線）
      return Container(
        width: size * 1.5,
        height: size * 0.5,
        decoration: BoxDecoration(
          color: AppColors.charcoal,
          borderRadius: BorderRadius.circular(size),
        ),
      );
    }

    // 通常の点目
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: AppColors.charcoal,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildBlush() {
    final blushSize = widget.size * 0.08;

    return Positioned(
      top: widget.size * 0.42,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: blushSize,
            height: blushSize * 0.6,
            decoration: BoxDecoration(
              color: AppColors.dustyPink.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(blushSize),
            ),
          ),
          SizedBox(width: widget.size * 0.25),
          Container(
            width: blushSize,
            height: blushSize * 0.6,
            decoration: BoxDecoration(
              color: AppColors.dustyPink.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(blushSize),
            ),
          ),
        ],
      ),
    );
  }

  Color _getBodyColor() {
    switch (widget.mood) {
      case RumiMood.neutral:
        return AppColors.foggyBlue;
      case RumiMood.happy:
        return const Color(0xFFE8EEF2);
      case RumiMood.proud:
        return AppColors.sageGreen.withValues(alpha: 0.7);
      case RumiMood.thinking:
        return AppColors.lavenderGray;
      case RumiMood.sleepy:
      case RumiMood.tired:
        return const Color(0xFFDDD8E2);
      case RumiMood.encouraging:
        return const Color(0xFFE5EDE9);
    }
  }

  Offset _getEyeOffset() {
    switch (widget.mood) {
      case RumiMood.sleepy:
      case RumiMood.tired:
        return const Offset(0, 4);
      case RumiMood.thinking:
        return const Offset(0, -2);
      default:
        return Offset.zero;
    }
  }
}

/// Rumi のムード（感情状態）
enum RumiMood {
  /// 通常
  neutral,

  /// 嬉しい
  happy,

  /// 誇らしい（ユーザーが正解した時）
  proud,

  /// 考え中
  thinking,

  /// 眠そう
  sleepy,

  /// 疲れた
  tired,

  /// 励まし
  encouraging,
}

/// Rumi のミニバージョン（ナビゲーション用）
class RumiMini extends StatelessWidget {
  const RumiMini({super.key, this.size = 40, this.mood = RumiMood.neutral});

  final double size;
  final RumiMood mood;

  @override
  Widget build(BuildContext context) {
    return Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: AppColors.foggyBlue,
            borderRadius: BorderRadius.circular(size * 0.35),
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: size * 0.08,
                  height: size * 0.08,
                  decoration: const BoxDecoration(
                    color: AppColors.charcoal,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: size * 0.15),
                Container(
                  width: size * 0.08,
                  height: size * 0.08,
                  decoration: const BoxDecoration(
                    color: AppColors.charcoal,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
        )
        .animate(onPlay: (controller) => controller.repeat(reverse: true))
        .moveY(
          begin: 0,
          end: 2,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
        );
  }
}

/// Rumi の吹き出しメッセージ
class RumiMessage extends StatelessWidget {
  const RumiMessage({super.key, required this.message, this.showRumi = true});

  final String message;
  final bool showRumi;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showRumi) ...[const RumiMini(size: 36), const SizedBox(width: 12)],
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.foggyBlue,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              message,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.charcoal,
                height: 1.5,
              ),
            ),
          ),
        ),
      ],
    ).animate().fadeIn().slideX(begin: -0.1, duration: 300.ms);
  }
}
