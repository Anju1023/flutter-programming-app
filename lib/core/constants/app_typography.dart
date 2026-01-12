import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// moku タイポグラフィ
/// 韓国カワイイデザインに基づく丸みのあるフォント設定
class AppTypography {
  AppTypography._();

  // ========== BASE FONT ==========

  /// ベースフォントファミリー（Noto Sans JP）
  static String get fontFamily => GoogleFonts.notoSansJp().fontFamily!;

  // ========== DISPLAY ==========

  /// 大見出し - 32px Bold
  static TextStyle get displayLarge => GoogleFonts.notoSansJp(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    height: 1.3,
  );

  /// 中見出し - 24px SemiBold
  static TextStyle get displayMedium => GoogleFonts.notoSansJp(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    height: 1.3,
  );

  /// 小見出し - 20px SemiBold
  static TextStyle get displaySmall => GoogleFonts.notoSansJp(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );

  // ========== HEADLINE ==========

  /// ヘッドライン - 18px Medium
  static TextStyle get headlineMedium => GoogleFonts.notoSansJp(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  /// ヘッドライン小 - 16px Medium
  static TextStyle get headlineSmall => GoogleFonts.notoSansJp(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
  );

  // ========== BODY ==========

  /// 本文 - 16px Regular
  static TextStyle get bodyLarge => GoogleFonts.notoSansJp(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    height: 1.6,
  );

  /// 本文 - 14px Regular
  static TextStyle get bodyMedium => GoogleFonts.notoSansJp(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.6,
  );

  /// 本文小 - 12px Regular
  static TextStyle get bodySmall => GoogleFonts.notoSansJp(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );

  // ========== LABEL ==========

  /// ラベル - 14px Medium
  static TextStyle get labelLarge => GoogleFonts.notoSansJp(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  /// ラベル小 - 12px Medium
  static TextStyle get labelMedium => GoogleFonts.notoSansJp(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4,
  );

  /// キャプション - 10px Regular
  static TextStyle get labelSmall => GoogleFonts.notoSansJp(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    height: 1.4,
  );

  // ========== CODE ==========

  /// コード - 14px Monospace
  static TextStyle get code => GoogleFonts.jetBrainsMono(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    height: 1.6,
  );

  /// コード小 - 12px Monospace
  static TextStyle get codeSmall => GoogleFonts.jetBrainsMono(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    height: 1.5,
  );
}
