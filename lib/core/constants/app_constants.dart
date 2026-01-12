/// moku 定数
class AppConstants {
  AppConstants._();

  // ========== APP INFO ==========

  /// アプリ名
  static const String appName = 'moku';

  /// アプリ説明
  static const String appDescription = '日常に溶け込む、わたしだけのコード・アトリエ';

  /// バージョン
  static const String version = '1.0.0';

  // ========== ANIMATION ==========

  /// マイクロアニメーション继続時間
  static const Duration microDuration = Duration(milliseconds: 150);

  /// 通常アニメーション継続時間
  static const Duration normalDuration = Duration(milliseconds: 300);

  /// 画面遷移アニメーション継続時間
  static const Duration transitionDuration = Duration(milliseconds: 400);

  /// ローディングアニメーション継続時間
  static const Duration loadingDuration = Duration(milliseconds: 1200);

  // ========== LAYOUT ==========

  /// 標準パディング
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  static const double paddingXLarge = 32.0;

  /// カード角丸
  static const double cardBorderRadius = 20.0;

  /// ボタン角丸
  static const double buttonBorderRadius = 16.0;

  /// 入力フィールド角丸
  static const double inputBorderRadius = 12.0;

  // ========== GAMIFICATION ==========

  /// 1日の無料レッスン数（Free プラン）
  static const int freeLearnLimitPerDay = 3;

  /// 連続学習ボーナスの間隔（日）
  static const int streakBonusDays = 7;
}
