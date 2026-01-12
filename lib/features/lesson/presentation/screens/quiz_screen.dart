import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/buttons/moku_button.dart';
import '../../../../rumi/rumi.dart';

/// クイズ画面（選択問題）
class QuizScreen extends ConsumerStatefulWidget {
  const QuizScreen({
    super.key,
    required this.question,
    required this.options,
    required this.correctIndex,
    this.explanation,
    required this.onCorrect,
    required this.onIncorrect,
  });

  final String question;
  final List<String> options;
  final int correctIndex;
  final String? explanation;
  final VoidCallback onCorrect;
  final VoidCallback onIncorrect;

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  int? _selectedIndex;
  bool? _isCorrect;

  void _selectOption(int index) {
    if (_selectedIndex != null) return; // 既に回答済み

    setState(() {
      _selectedIndex = index;
      _isCorrect = index == widget.correctIndex;
    });
  }

  void _continue() {
    if (_isCorrect == true) {
      widget.onCorrect();
    } else {
      widget.onIncorrect();
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.foggyBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'クイズ',
                      style: AppTypography.labelSmall.copyWith(
                        color: AppColors.charcoal,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    // 質問
                    Text(
                      widget.question,
                      style: AppTypography.headlineSmall.copyWith(
                        color: AppColors.charcoal,
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ).animate().fadeIn(),

                    const SizedBox(height: 32),

                    // 選択肢
                    ...widget.options.asMap().entries.map((entry) {
                      final index = entry.key;
                      final option = entry.value;
                      return _buildOption(index, option);
                    }),

                    // 結果表示
                    if (_selectedIndex != null) ...[
                      const SizedBox(height: 24),
                      _buildResult(),
                    ],
                  ],
                ),
              ),
            ),

            // 次へボタン
            if (_selectedIndex != null)
              Padding(
                padding: const EdgeInsets.all(24),
                child: MokuButton(
                  label: _isCorrect! ? 'つぎへ' : 'もう一度',
                  onPressed: _continue,
                  variant: _isCorrect!
                      ? MokuButtonVariant.success
                      : MokuButtonVariant.primary,
                  size: MokuButtonSize.large,
                ).animate().fadeIn().slideY(begin: 0.2),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(int index, String text) {
    final isSelected = _selectedIndex == index;
    final isCorrect = index == widget.correctIndex;
    final showResult = _selectedIndex != null;

    Color backgroundColor;
    Color borderColor;
    if (showResult) {
      if (isCorrect) {
        backgroundColor = AppColors.sageGreen.withValues(alpha: 0.3);
        borderColor = AppColors.sageGreen;
      } else if (isSelected) {
        backgroundColor = AppColors.dustyPink.withValues(alpha: 0.3);
        borderColor = AppColors.dustyPink;
      } else {
        backgroundColor = AppColors.foggyBlue;
        borderColor = AppColors.foggyBlue;
      }
    } else {
      backgroundColor = isSelected
          ? AppColors.lavenderGray
          : AppColors.foggyBlue;
      borderColor = isSelected ? AppColors.lavenderGray : AppColors.foggyBlue;
    }

    return GestureDetector(
          onTap: () => _selectOption(index),
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: borderColor, width: 2),
            ),
            child: Row(
              children: [
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      String.fromCharCode(65 + index), // A, B, C...
                      style: AppTypography.labelMedium.copyWith(
                        color: AppColors.charcoal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    text,
                    style: AppTypography.bodyMedium.copyWith(
                      color: AppColors.charcoal,
                    ),
                  ),
                ),
                if (showResult && isCorrect)
                  const Icon(
                    Icons.check_circle_rounded,
                    color: AppColors.sageGreen,
                  ),
                if (showResult && isSelected && !isCorrect)
                  const Icon(Icons.cancel_rounded, color: AppColors.dustyPink),
              ],
            ),
          ),
        )
        .animate(delay: Duration(milliseconds: 100 * index))
        .fadeIn()
        .slideX(begin: 0.1);
  }

  Widget _buildResult() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _isCorrect!
            ? AppColors.sageGreen.withValues(alpha: 0.2)
            : AppColors.dustyPink.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          RumiMini(
            size: 40,
            mood: _isCorrect! ? RumiMood.proud : RumiMood.encouraging,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _isCorrect! ? 'すごい！正解！' : 'おしい！',
                  style: AppTypography.labelLarge.copyWith(
                    color: AppColors.charcoal,
                  ),
                ),
                if (widget.explanation != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    widget.explanation!,
                    style: AppTypography.bodySmall.copyWith(
                      color: AppColors.charcoal,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn().scale(begin: const Offset(0.95, 0.95));
  }
}
