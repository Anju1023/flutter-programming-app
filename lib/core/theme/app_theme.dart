import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_typography.dart';
import '../constants/app_constants.dart';

/// moku テーマ設定
class AppTheme {
  AppTheme._();

  // ========== LIGHT THEME ==========

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // カラースキーム
    colorScheme: const ColorScheme.light(
      surface: AppColors.offWhite,
      onSurface: AppColors.charcoal,
      primary: AppColors.lavenderGray,
      onPrimary: AppColors.charcoal,
      secondary: AppColors.sageGreen,
      onSecondary: AppColors.charcoal,
      error: AppColors.dustyPink,
      onError: AppColors.charcoal,
      surfaceContainerHighest: AppColors.foggyBlue,
    ),

    // スキャフォールド背景
    scaffoldBackgroundColor: AppColors.offWhite,

    // アプリバー
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.offWhite,
      foregroundColor: AppColors.charcoal,
      titleTextStyle: AppTypography.headlineMedium.copyWith(
        color: AppColors.charcoal,
      ),
      centerTitle: true,
    ),

    // カード
    cardTheme: CardThemeData(
      elevation: 0,
      color: AppColors.foggyBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.cardBorderRadius),
      ),
      shadowColor: AppColors.shadowColor,
    ),

    // ボタン
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.lavenderGray,
        foregroundColor: AppColors.charcoal,
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.paddingLarge,
          vertical: AppConstants.paddingMedium,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.buttonBorderRadius),
        ),
        textStyle: AppTypography.labelLarge,
      ),
    ),

    // テキストボタン
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.charcoal,
        textStyle: AppTypography.labelLarge,
      ),
    ),

    // 入力フィールド
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppConstants.paddingMedium,
        vertical: AppConstants.paddingMedium,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.inputBorderRadius),
        borderSide: const BorderSide(color: AppColors.greige, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.inputBorderRadius),
        borderSide: const BorderSide(color: AppColors.greige, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.inputBorderRadius),
        borderSide: const BorderSide(color: AppColors.lavenderGray, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppConstants.inputBorderRadius),
        borderSide: const BorderSide(color: AppColors.dustyPink, width: 1),
      ),
      hintStyle: AppTypography.bodyMedium.copyWith(color: AppColors.greige),
      labelStyle: AppTypography.labelMedium.copyWith(color: AppColors.greige),
    ),

    // ボトムナビゲーション
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: AppColors.offWhite,
      selectedItemColor: AppColors.charcoal,
      unselectedItemColor: AppColors.greige,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),

    // テキストテーマ
    textTheme: TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(
        color: AppColors.charcoal,
      ),
      displayMedium: AppTypography.displayMedium.copyWith(
        color: AppColors.charcoal,
      ),
      displaySmall: AppTypography.displaySmall.copyWith(
        color: AppColors.charcoal,
      ),
      headlineMedium: AppTypography.headlineMedium.copyWith(
        color: AppColors.charcoal,
      ),
      headlineSmall: AppTypography.headlineSmall.copyWith(
        color: AppColors.charcoal,
      ),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.charcoal),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.charcoal),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.greige),
      labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.charcoal),
      labelMedium: AppTypography.labelMedium.copyWith(
        color: AppColors.charcoal,
      ),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.greige),
    ),
  );

  // ========== DARK THEME ==========
  // TODO: ダークテーマは Phase 2 以降で実装

  static ThemeData get dark => light;
}
