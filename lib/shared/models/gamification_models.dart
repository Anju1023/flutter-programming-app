import 'package:freezed_annotation/freezed_annotation.dart';

part 'gamification_models.freezed.dart';
part 'gamification_models.g.dart';

/// ドロップ（雫）- moku の仮想通貨
@freezed
class DropBalance with _$DropBalance {
  const factory DropBalance({
    required int amount,
    @Default(0) int todayEarned,
    DateTime? lastEarnedAt,
  }) = _DropBalance;

  factory DropBalance.fromJson(Map<String, dynamic> json) =>
      _$DropBalanceFromJson(json);
}

/// ドロップ獲得履歴
@freezed
class DropTransaction with _$DropTransaction {
  const factory DropTransaction({
    required String id,
    required int amount,
    required DropSource source,
    required DateTime earnedAt,
    String? lessonId,
  }) = _DropTransaction;

  factory DropTransaction.fromJson(Map<String, dynamic> json) =>
      _$DropTransactionFromJson(json);
}

/// ドロップ獲得元
enum DropSource {
  /// レッスン完了
  lessonComplete,

  /// クイズ正解
  quizCorrect,

  /// ワーク完了
  workComplete,

  /// ログインボーナス
  dailyLogin,

  /// ストリークボーナス
  streakBonus,

  /// 実績解除
  achievement,
}

/// デイズ（連続学習日数）
@freezed
class DaysStreak with _$DaysStreak {
  const factory DaysStreak({
    required int currentStreak,
    required int maxStreak,
    DateTime? lastActiveDate,
    @Default(false) bool isActiveToday,
  }) = _DaysStreak;

  factory DaysStreak.fromJson(Map<String, dynamic> json) =>
      _$DaysStreakFromJson(json);
}

/// 実績
@freezed
class Achievement with _$Achievement {
  const factory Achievement({
    required String id,
    required String title,
    required String description,
    required String iconName,
    required AchievementCategory category,
    required int dropReward,
    @Default(false) bool isUnlocked,
    DateTime? unlockedAt,
  }) = _Achievement;

  factory Achievement.fromJson(Map<String, dynamic> json) =>
      _$AchievementFromJson(json);
}

/// 実績カテゴリ
enum AchievementCategory {
  /// 学習系
  learning,

  /// ストリーク系
  streak,

  /// コレクション系
  collection,

  /// 特別
  special,
}

/// ユーザーのゲーミフィケーション状態
@freezed
class GamificationState with _$GamificationState {
  const factory GamificationState({
    required DropBalance drops,
    required DaysStreak streak,
    @Default([]) List<Achievement> achievements,
    @Default(1) int level,
    @Default(0) int totalLessonsCompleted,
    @Default(0) int totalQuizCorrect,
  }) = _GamificationState;

  factory GamificationState.fromJson(Map<String, dynamic> json) =>
      _$GamificationStateFromJson(json);
}
