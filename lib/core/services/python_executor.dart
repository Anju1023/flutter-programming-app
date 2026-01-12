import 'dart:async';
import 'package:flutter/foundation.dart';

/// Python 実行サービス
/// ネイティブ環境ではシミュレーション、Web では Pyodide を使用
class PythonExecutor {
  PythonExecutor._();

  static final PythonExecutor instance = PythonExecutor._();

  bool _isInitialized = false;
  bool _isInitializing = false;

  /// 初期化済みかどうか
  bool get isInitialized => _isInitialized;

  /// 初期化中かどうか
  bool get isInitializing => _isInitializing;

  /// Pyodide を初期化
  Future<void> initialize() async {
    if (_isInitialized || _isInitializing) return;

    _isInitializing = true;

    try {
      // 初期化完了をシミュレート
      await Future.delayed(const Duration(milliseconds: 500));
      _isInitialized = true;
      debugPrint('PythonExecutor: Initialized');
    } catch (e) {
      debugPrint('PythonExecutor initialization error: $e');
    } finally {
      _isInitializing = false;
    }
  }

  /// Python コードを実行
  Future<PythonResult> execute(String code) async {
    if (!_isInitialized) {
      await initialize();
    }

    try {
      // シミュレーション実行
      return _simulateExecution(code);
    } catch (e) {
      return PythonResult(output: '', error: e.toString(), success: false);
    }
  }

  /// シミュレーション実行（本格的な Pyodide 統合は将来実装）
  PythonResult _simulateExecution(String code) {
    String output = '';

    // print 文を解析（ダブルクォート）
    final doubleQuoteRegex = RegExp(r'print\s*\(\s*"(.+?)"\s*\)');
    final doubleMatches = doubleQuoteRegex.allMatches(code);

    if (doubleMatches.isNotEmpty) {
      output = doubleMatches.map((m) => m.group(1)).join('\n');
    } else {
      // シングルクォート
      final singleQuoteRegex = RegExp(r"print\s*\(\s*'(.+?)'\s*\)");
      final singleMatches = singleQuoteRegex.allMatches(code);
      if (singleMatches.isNotEmpty) {
        output = singleMatches.map((m) => m.group(1)).join('\n');
      }
    }

    // 計算式（足し算）
    if (output.isEmpty) {
      final addRegex = RegExp(r'print\s*\(\s*(\d+)\s*\+\s*(\d+)\s*\)');
      final addMatch = addRegex.firstMatch(code);
      if (addMatch != null) {
        final a = int.tryParse(addMatch.group(1) ?? '') ?? 0;
        final b = int.tryParse(addMatch.group(2) ?? '') ?? 0;
        output = (a + b).toString();
      }
    }

    // 計算式（引き算）
    if (output.isEmpty) {
      final subRegex = RegExp(r'print\s*\(\s*(\d+)\s*-\s*(\d+)\s*\)');
      final subMatch = subRegex.firstMatch(code);
      if (subMatch != null) {
        final a = int.tryParse(subMatch.group(1) ?? '') ?? 0;
        final b = int.tryParse(subMatch.group(2) ?? '') ?? 0;
        output = (a - b).toString();
      }
    }

    // 計算式（掛け算）
    if (output.isEmpty) {
      final mulRegex = RegExp(r'print\s*\(\s*(\d+)\s*\*\s*(\d+)\s*\)');
      final mulMatch = mulRegex.firstMatch(code);
      if (mulMatch != null) {
        final a = int.tryParse(mulMatch.group(1) ?? '') ?? 0;
        final b = int.tryParse(mulMatch.group(2) ?? '') ?? 0;
        output = (a * b).toString();
      }
    }

    // 変数 print（ダブルクォート定義）
    if (output.isEmpty) {
      final varPrintRegex = RegExp(r'print\s*\(\s*(\w+)\s*\)');
      final varMatch = varPrintRegex.firstMatch(code);
      if (varMatch != null) {
        final varName = varMatch.group(1);
        // 変数定義を探す
        final varDefDoubleRegex = RegExp('$varName\\s*=\\s*"(.+?)"');
        final varDefDouble = varDefDoubleRegex.firstMatch(code);
        if (varDefDouble != null) {
          output = varDefDouble.group(1) ?? '';
        } else {
          // シングルクォート定義
          final varDefSingleRegex = RegExp("$varName\\s*=\\s*'(.+?)'");
          final varDefSingle = varDefSingleRegex.firstMatch(code);
          if (varDefSingle != null) {
            output = varDefSingle.group(1) ?? '';
          } else {
            // 数値変数
            final numVarRegex = RegExp('$varName\\s*=\\s*(\\d+)');
            final numVar = numVarRegex.firstMatch(code);
            if (numVar != null) {
              output = numVar.group(1) ?? '';
            }
          }
        }
      }
    }

    return PythonResult(
      output: output.isEmpty ? '(出力なし)' : output,
      error: '',
      success: true,
    );
  }
}

/// Python 実行結果
class PythonResult {
  const PythonResult({
    required this.output,
    required this.error,
    required this.success,
  });

  final String output;
  final String error;
  final bool success;
}
