import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/buttons/moku_button.dart';

/// ガイド画面（ビジュアル解説）
class GuideScreen extends ConsumerStatefulWidget {
  const GuideScreen({
    super.key,
    required this.title,
    required this.slides,
    required this.onComplete,
  });

  final String title;
  final List<GuideSlideData> slides;
  final VoidCallback onComplete;

  @override
  ConsumerState<GuideScreen> createState() => _GuideScreenState();
}

class _GuideScreenState extends ConsumerState<GuideScreen> {
  int _currentIndex = 0;

  void _next() {
    if (_currentIndex < widget.slides.length - 1) {
      setState(() => _currentIndex++);
    } else {
      widget.onComplete();
    }
  }

  void _previous() {
    if (_currentIndex > 0) {
      setState(() => _currentIndex--);
    }
  }

  @override
  Widget build(BuildContext context) {
    final slide = widget.slides[_currentIndex];
    final isLast = _currentIndex == widget.slides.length - 1;
    final progress = (_currentIndex + 1) / widget.slides.length;

    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: SafeArea(
        child: Column(
          children: [
            // ヘッダー
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close_rounded),
                    color: AppColors.greige,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: LinearProgressIndicator(
                        value: progress,
                        backgroundColor: AppColors.foggyBlue,
                        valueColor: const AlwaysStoppedAnimation(
                          AppColors.sageGreen,
                        ),
                        minHeight: 4,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    '${_currentIndex + 1}/${widget.slides.length}',
                    style: AppTypography.labelSmall.copyWith(
                      color: AppColors.greige,
                    ),
                  ),
                ],
              ),
            ),

            // コンテンツ
            Expanded(
              child: GestureDetector(
                onHorizontalDragEnd: (details) {
                  if (details.primaryVelocity! < 0) {
                    _next();
                  } else if (details.primaryVelocity! > 0) {
                    _previous();
                  }
                },
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: _buildSlide(slide),
                ),
              ),
            ),

            // ボタン
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  if (_currentIndex > 0)
                    MokuButton(
                      label: '戻る',
                      onPressed: _previous,
                      variant: MokuButtonVariant.ghost,
                    ),
                  const Spacer(),
                  MokuButton(
                    label: isLast ? '完了' : '次へ',
                    onPressed: _next,
                    variant: MokuButtonVariant.primary,
                    icon: Icons.arrow_forward_rounded,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlide(GuideSlideData slide) {
    return Padding(
      key: ValueKey(_currentIndex),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // テキスト
          Text(
            slide.text,
            style: AppTypography.bodyLarge.copyWith(
              color: AppColors.charcoal,
              height: 1.8,
            ),
            textAlign: TextAlign.center,
          ).animate().fadeIn().slideX(begin: 0.1),

          // コード（ある場合）
          if (slide.code != null) ...[
            const SizedBox(height: 24),
            Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.charcoal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    slide.code!,
                    style: AppTypography.code.copyWith(
                      color: AppColors.offWhite,
                    ),
                  ),
                )
                .animate()
                .fadeIn(delay: 200.ms)
                .scale(begin: const Offset(0.95, 0.95)),
          ],
        ],
      ),
    );
  }
}

/// ガイドスライドデータ
class GuideSlideData {
  const GuideSlideData({required this.text, this.code, this.imageUrl});

  final String text;
  final String? code;
  final String? imageUrl;
}
