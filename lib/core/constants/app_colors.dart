import 'package:flutter/material.dart';

/// moku カラーパレット
/// デザインガイドに基づくニュアンスカラー
class AppColors {
  AppColors._();

  // ========== BASE ==========

  /// オフホワイト - メイン背景
  static const Color offWhite = Color(0xFFFAFAFA);

  /// フォギーブルー - サブ背景・カード
  static const Color foggyBlue = Color(0xFFEEF2F5);

  // ========== ACCENT ==========

  /// ラベンダーグレー - メインアクセント
  static const Color lavenderGray = Color(0xFFE0DDE6);

  /// セージグリーン - 成功・完了
  static const Color sageGreen = Color(0xFFD8E2DC);

  /// ダスティピンク - 注意・エラー
  static const Color dustyPink = Color(0xFFEBD4D4);

  // ========== TEXT ==========

  /// チャコール - メインテキスト
  static const Color charcoal = Color(0xFF333333);

  /// グレージュ - サブテキスト
  static const Color greige = Color(0xFF8F8C8A);

  // ========== ADDITIONAL ==========

  /// ホワイト
  static const Color white = Color(0xFFFFFFFF);

  /// トランスペアレント
  static const Color transparent = Colors.transparent;

  /// ソフトシャドウカラー
  static const Color shadowColor = Color(0x0F000000);

  // ========== GRADIENTS ==========

  /// メイングラデーション（ラベンダー → セージ）
  static const LinearGradient mainGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [lavenderGray, sageGreen],
  );
}
