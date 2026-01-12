import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/buttons/moku_button.dart';
import '../../../../rumi/rumi.dart';

/// ワーク画面（コーディング演習）
class WorkScreen extends ConsumerStatefulWidget {
  const WorkScreen({
    super.key,
    required this.instruction,
    required this.initialCode,
    required this.expectedOutput,
    this.hint,
    this.solution,
    required this.onComplete,
  });

  final String instruction;
  final String initialCode;
  final String expectedOutput;
  final String? hint;
  final String? solution;
  final VoidCallback onComplete;

  @override
  ConsumerState<WorkScreen> createState() => _WorkScreenState();
}

class _WorkScreenState extends ConsumerState<WorkScreen> {
  late TextEditingController _codeController;
  String? _output;
  bool _isRunning = false;
  bool _showHint = false;
  bool _isCorrect = false;

  @override
  void initState() {
    super.initState();
    _codeController = TextEditingController(text: widget.initialCode);
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _runCode() async {
    setState(() {
      _isRunning = true;
      _output = null;
    });

    // TODO: 実際の Python 実行環境を統合
    await Future.delayed(const Duration(milliseconds: 500));

    final code = _codeController.text;
    String simulatedOutput = '';

    // 文字列 print を検出
    final stringPrintMatch = RegExp(
      r'print\s*\(\s*"(.+?)"\s*\)',
    ).firstMatch(code);
    if (stringPrintMatch != null) {
      simulatedOutput = stringPrintMatch.group(1) ?? '';
    } else {
      // シングルクォート
      final singleQuoteMatch = RegExp(
        r"print\s*\(\s*'(.+?)'\s*\)",
      ).firstMatch(code);
      if (singleQuoteMatch != null) {
        simulatedOutput = singleQuoteMatch.group(1) ?? '';
      } else {
        // 変数 print を検出
        final varPrintMatch = RegExp(
          r'print\s*\(\s*(\w+)\s*\)',
        ).firstMatch(code);
        if (varPrintMatch != null) {
          final varName = varPrintMatch.group(1);
          // 変数定義を探す（ダブルクォート）
          final varDefMatch = RegExp(
            '$varName\\s*=\\s*"(.+?)"',
          ).firstMatch(code);
          if (varDefMatch != null) {
            simulatedOutput = varDefMatch.group(1) ?? '';
          } else {
            // シングルクォート
            final varDefSingleMatch = RegExp(
              "$varName\\s*=\\s*'(.+?)'",
            ).firstMatch(code);
            if (varDefSingleMatch != null) {
              simulatedOutput = varDefSingleMatch.group(1) ?? '';
            }
          }
        }
      }
    }

    // 計算式の場合
    if (simulatedOutput.isEmpty) {
      final calcMatch = RegExp(
        r'print\s*\(\s*(\d+)\s*\+\s*(\d+)\s*\)',
      ).firstMatch(code);
      if (calcMatch != null) {
        final a = int.tryParse(calcMatch.group(1) ?? '') ?? 0;
        final b = int.tryParse(calcMatch.group(2) ?? '') ?? 0;
        simulatedOutput = (a + b).toString();
      }
    }

    setState(() {
      _isRunning = false;
      _output = simulatedOutput.isEmpty ? '(出力なし)' : simulatedOutput;
      _isCorrect = _output == widget.expectedOutput;
    });
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
                      color: AppColors.lavenderGray,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.code_rounded,
                          size: 16,
                          color: AppColors.charcoal,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'ワーク',
                          style: AppTypography.labelSmall.copyWith(
                            color: AppColors.charcoal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 指示
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const RumiMini(size: 32),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.foggyBlue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              widget.instruction,
                              style: AppTypography.bodyMedium.copyWith(
                                color: AppColors.charcoal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ).animate().fadeIn(),

                    const SizedBox(height: 24),

                    // コードエディタ
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.charcoal,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        children: [
                          // エディタヘッダー
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: AppColors.greige,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: AppColors.dustyPink,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: AppColors.warmBeige,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    color: AppColors.sageGreen,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  'Canvas',
                                  style: AppTypography.labelSmall.copyWith(
                                    color: AppColors.greige,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // コード入力
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: TextField(
                              controller: _codeController,
                              maxLines: 5,
                              style: AppTypography.code.copyWith(
                                color: AppColors.offWhite,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    // 実行ボタンとヒント
                    Row(
                      children: [
                        Expanded(
                          child: MokuButton(
                            label: '実行',
                            onPressed: _isRunning ? null : _runCode,
                            isLoading: _isRunning,
                            variant: MokuButtonVariant.primary,
                            icon: Icons.play_arrow_rounded,
                          ),
                        ),
                        if (widget.hint != null) ...[
                          const SizedBox(width: 12),
                          MokuButton(
                            label: 'ヒント',
                            onPressed: () =>
                                setState(() => _showHint = !_showHint),
                            variant: MokuButtonVariant.ghost,
                            icon: Icons.lightbulb_outline_rounded,
                          ),
                        ],
                      ],
                    ),

                    // ヒント表示
                    if (_showHint && widget.hint != null) ...[
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.warmBeige.withValues(alpha: 0.5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.lightbulb_rounded,
                              color: AppColors.charcoal,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                widget.hint!,
                                style: AppTypography.bodySmall.copyWith(
                                  color: AppColors.charcoal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animate().fadeIn(),
                    ],

                    // 出力
                    if (_output != null) ...[
                      const SizedBox(height: 24),
                      Text(
                        '出力:',
                        style: AppTypography.labelMedium.copyWith(
                          color: AppColors.greige,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: _isCorrect
                              ? AppColors.sageGreen.withValues(alpha: 0.2)
                              : AppColors.foggyBlue,
                          borderRadius: BorderRadius.circular(12),
                          border: _isCorrect
                              ? Border.all(color: AppColors.sageGreen, width: 2)
                              : null,
                        ),
                        child: Text(
                          _output!,
                          style: AppTypography.code.copyWith(
                            color: AppColors.charcoal,
                          ),
                        ),
                      ).animate().fadeIn(),

                      // 正解メッセージ
                      if (_isCorrect) ...[
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            const Rumi(size: 60, mood: RumiMood.proud),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'できた！すごい！',
                                    style: AppTypography.headlineSmall.copyWith(
                                      color: AppColors.charcoal,
                                    ),
                                  ),
                                  Text(
                                    '期待通りの出力だね。',
                                    style: AppTypography.bodySmall.copyWith(
                                      color: AppColors.greige,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ).animate().fadeIn().scale(
                          begin: const Offset(0.9, 0.9),
                        ),
                      ],
                    ],

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),

            // 次へボタン
            if (_isCorrect)
              Padding(
                padding: const EdgeInsets.all(24),
                child: SizedBox(
                  width: double.infinity,
                  child: MokuButton(
                    label: '完了！',
                    onPressed: widget.onComplete,
                    variant: MokuButtonVariant.success,
                    size: MokuButtonSize.large,
                    icon: Icons.check_rounded,
                  ),
                ),
              ).animate().fadeIn().slideY(begin: 0.2),
          ],
        ),
      ),
    );
  }
}
