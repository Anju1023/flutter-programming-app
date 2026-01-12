import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_typography.dart';
import '../../../../core/widgets/buttons/moku_button.dart';
import '../../../../core/services/python_executor.dart';
import '../../../../rumi/rumi.dart';

/// Canvas - moku のコードエディタ
class CanvasScreen extends ConsumerStatefulWidget {
  const CanvasScreen({super.key});

  @override
  ConsumerState<CanvasScreen> createState() => _CanvasScreenState();
}

class _CanvasScreenState extends ConsumerState<CanvasScreen> {
  final TextEditingController _codeController = TextEditingController();
  final PythonExecutor _executor = PythonExecutor.instance;

  String _output = '';
  bool _isRunning = false;
  bool _isInitializing = false;

  @override
  void initState() {
    super.initState();
    _codeController.text = '# Python を書いてみよう！\nprint("Hello, moku!")';
    _initializePython();
  }

  Future<void> _initializePython() async {
    setState(() => _isInitializing = true);
    await _executor.initialize();
    setState(() => _isInitializing = false);
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _runCode() async {
    setState(() {
      _isRunning = true;
      _output = '';
    });

    final result = await _executor.execute(_codeController.text);

    setState(() {
      _isRunning = false;
      _output = result.success ? result.output : '❌ ${result.error}';
    });
  }

  void _clearOutput() {
    setState(() => _output = '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.charcoal,
      body: SafeArea(
        child: Column(
          children: [
            // ヘッダー
            _buildHeader(),

            // エディタ
            Expanded(flex: 3, child: _buildEditor()),

            // 区切り線
            Container(
              height: 2,
              color: AppColors.greige.withValues(alpha: 0.3),
            ),

            // 出力エリア
            Expanded(flex: 2, child: _buildOutputArea()),

            // 実行ボタン
            _buildControls(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.charcoal,
        border: Border(
          bottom: BorderSide(color: AppColors.greige.withValues(alpha: 0.3)),
        ),
      ),
      child: Row(
        children: [
          // 戻るボタン
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_rounded),
            color: AppColors.offWhite,
          ),

          // ウィンドウボタン風
          Row(
            children: [
              _buildWindowDot(AppColors.dustyPink),
              const SizedBox(width: 6),
              _buildWindowDot(AppColors.warmBeige),
              const SizedBox(width: 6),
              _buildWindowDot(AppColors.sageGreen),
            ],
          ),

          const SizedBox(width: 16),

          // タイトル
          Text(
            'Canvas',
            style: AppTypography.headlineSmall.copyWith(
              color: AppColors.offWhite,
            ),
          ),

          const Spacer(),

          // 初期化中インジケーター
          if (_isInitializing)
            Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.sageGreen,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Python 準備中...',
                  style: AppTypography.labelSmall.copyWith(
                    color: AppColors.greige,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildWindowDot(Color color) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }

  Widget _buildEditor() {
    return Container(
      color: const Color(0xFF1E1E1E),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 行番号
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                _codeController.text.split('\n').length.clamp(1, 50),
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    '${index + 1}',
                    style: AppTypography.code.copyWith(
                      color: AppColors.greige.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ),
            ),

            // 区切り線
            Container(
              width: 1,
              height: 200,
              color: AppColors.greige.withValues(alpha: 0.2),
            ),

            const SizedBox(width: 12),

            // コード入力
            Expanded(
              child: TextField(
                controller: _codeController,
                maxLines: null,
                style: AppTypography.code.copyWith(color: AppColors.offWhite),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
                onChanged: (_) => setState(() {}),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOutputArea() {
    return Container(
      color: const Color(0xFF252526),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 出力ヘッダー
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppColors.greige.withValues(alpha: 0.2),
                ),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.terminal_rounded,
                  size: 16,
                  color: AppColors.greige,
                ),
                const SizedBox(width: 8),
                Text(
                  '出力',
                  style: AppTypography.labelSmall.copyWith(
                    color: AppColors.greige,
                  ),
                ),
                const Spacer(),
                if (_output.isNotEmpty)
                  IconButton(
                    onPressed: _clearOutput,
                    icon: const Icon(Icons.clear_rounded, size: 16),
                    color: AppColors.greige,
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
              ],
            ),
          ),

          // 出力内容
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: _output.isEmpty
                  ? Text(
                      _isRunning ? '実行中...' : 'ここに結果が表示されます',
                      style: AppTypography.code.copyWith(
                        color: AppColors.greige.withValues(alpha: 0.5),
                        fontStyle: FontStyle.italic,
                      ),
                    )
                  : Text(
                      _output,
                      style: AppTypography.code.copyWith(
                        color: _output.startsWith('❌')
                            ? AppColors.dustyPink
                            : AppColors.sageGreen,
                      ),
                    ).animate().fadeIn(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: AppColors.charcoal,
      child: Row(
        children: [
          // Rumi
          const RumiMini(size: 32),
          const SizedBox(width: 12),

          // ヒント
          Expanded(
            child: Text(
              _isRunning ? '実行中...' : '準備できたら実行してみよう',
              style: AppTypography.bodySmall.copyWith(color: AppColors.greige),
            ),
          ),

          // 実行ボタン
          MokuButton(
            label: '実行',
            onPressed: _isRunning || _isInitializing ? null : _runCode,
            isLoading: _isRunning,
            variant: MokuButtonVariant.success,
            icon: Icons.play_arrow_rounded,
          ),
        ],
      ),
    );
  }
}
