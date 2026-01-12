import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../constants/app_constants.dart';

/// moku アニメーションユーティリティ
/// 共通のアニメーション効果を提供
class MokuAnimations {
  MokuAnimations._();

  /// フェードイン（ふわっと表示）
  static List<Effect<dynamic>> get fadeIn => [
    FadeEffect(duration: AppConstants.normalDuration, curve: Curves.easeOut),
    MoveEffect(
      begin: const Offset(0, 8),
      end: Offset.zero,
      duration: AppConstants.normalDuration,
      curve: Curves.easeOut,
    ),
  ];

  /// スケールイン（ポップアップ）
  static List<Effect<dynamic>> get scaleIn => [
    ScaleEffect(
      begin: const Offset(0.95, 0.95),
      end: const Offset(1, 1),
      duration: AppConstants.normalDuration,
      curve: Curves.easeOutBack,
    ),
    FadeEffect(duration: AppConstants.normalDuration, curve: Curves.easeOut),
  ];

  /// スライドイン（左から）
  static List<Effect<dynamic>> get slideInLeft => [
    MoveEffect(
      begin: const Offset(-20, 0),
      end: Offset.zero,
      duration: AppConstants.normalDuration,
      curve: Curves.easeOut,
    ),
    FadeEffect(duration: AppConstants.normalDuration, curve: Curves.easeOut),
  ];

  /// スライドイン（下から）
  static List<Effect<dynamic>> get slideInUp => [
    MoveEffect(
      begin: const Offset(0, 20),
      end: Offset.zero,
      duration: AppConstants.normalDuration,
      curve: Curves.easeOut,
    ),
    FadeEffect(duration: AppConstants.normalDuration, curve: Curves.easeOut),
  ];

  /// シェイク（エラー時）
  static List<Effect<dynamic>> get shake => [
    ShakeEffect(
      hz: 4,
      offset: const Offset(4, 0),
      duration: const Duration(milliseconds: 400),
    ),
  ];

  /// パルス（注目させる）
  static List<Effect<dynamic>> get pulse => [
    ScaleEffect(
      begin: const Offset(1, 1),
      end: const Offset(1.05, 1.05),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    ),
  ];
}

/// リストアイテム用のスタガードアニメーション拡張
extension StaggeredListAnimation on Widget {
  /// リストアイテムをインデックスに応じて順番にフェードイン
  Widget staggeredItem(int index, {int delayMs = 50}) {
    return animate(delay: Duration(milliseconds: index * delayMs))
        .fadeIn(duration: AppConstants.normalDuration)
        .moveY(begin: 8, duration: AppConstants.normalDuration);
  }
}

/// タップフィードバック拡張
extension TapFeedback on Widget {
  /// タップ時に軽く縮む効果
  Widget withTapFeedback({VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: animate(onPlay: (controller) => controller.stop()).scale(
        begin: const Offset(1, 1),
        end: const Offset(0.97, 0.97),
        duration: const Duration(milliseconds: 100),
      ),
    );
  }
}

/// ローディングインジケーター
class MokuLoadingIndicator extends StatelessWidget {
  const MokuLoadingIndicator({super.key, this.size = 32, this.color});

  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          width: size,
          height: size,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: color ?? Theme.of(context).colorScheme.primary,
          ),
        )
        .animate(onPlay: (controller) => controller.repeat())
        .rotate(duration: const Duration(seconds: 1));
  }
}

/// スケルトンローディング
class MokuSkeleton extends StatelessWidget {
  const MokuSkeleton({
    super.key,
    this.width,
    this.height = 16,
    this.borderRadius = 8,
  });

  final double? width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        )
        .animate(onPlay: (controller) => controller.repeat())
        .shimmer(duration: const Duration(milliseconds: 1200));
  }
}
