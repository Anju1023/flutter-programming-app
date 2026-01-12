import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../shared/models/gamification_models.dart';
import '../../shared/data/achievements.dart';

/// ゲーミフィケーションサービス
/// ドロップ、デイズ、実績の管理を行う
class GamificationService {
  GamificationService._();

  static final GamificationService instance = GamificationService._();

  GamificationState _state = const GamificationState(
    drops: DropBalance(amount: 0),
    streak: DaysStreak(currentStreak: 0, maxStreak: 0),
  );

  /// 現在の状態
  GamificationState get state => _state;

  /// 初期化
  Future<void> initialize() async {
    await _loadState();
    _checkDailyLogin();
  }

  /// ローカルストレージから状態をロード
  Future<void> _loadState() async {
    final prefs = await SharedPreferences.getInstance();

    final drops = prefs.getInt('drops_amount') ?? 0;
    final streak = prefs.getInt('streak_current') ?? 0;
    final maxStreak = prefs.getInt('streak_max') ?? 0;
    final lastActive = prefs.getString('last_active_date');
    final totalLessons = prefs.getInt('total_lessons') ?? 0;
    final totalQuiz = prefs.getInt('total_quiz') ?? 0;

    _state = GamificationState(
      drops: DropBalance(amount: drops),
      streak: DaysStreak(
        currentStreak: streak,
        maxStreak: maxStreak,
        lastActiveDate: lastActive != null
            ? DateTime.tryParse(lastActive)
            : null,
      ),
      totalLessonsCompleted: totalLessons,
      totalQuizCorrect: totalQuiz,
    );
  }

  /// 状態を保存
  Future<void> _saveState() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setInt('drops_amount', _state.drops.amount);
    await prefs.setInt('streak_current', _state.streak.currentStreak);
    await prefs.setInt('streak_max', _state.streak.maxStreak);
    if (_state.streak.lastActiveDate != null) {
      await prefs.setString(
        'last_active_date',
        _state.streak.lastActiveDate!.toIso8601String(),
      );
    }
    await prefs.setInt('total_lessons', _state.totalLessonsCompleted);
    await prefs.setInt('total_quiz', _state.totalQuizCorrect);
  }

  /// デイリーログインのチェック
  void _checkDailyLogin() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastActive = _state.streak.lastActiveDate;

    if (lastActive == null) {
      // 初回
      _updateStreak(today, 1);
      _addDrops(5, DropSource.dailyLogin);
      return;
    }

    final lastActiveDay = DateTime(
      lastActive.year,
      lastActive.month,
      lastActive.day,
    );
    final difference = today.difference(lastActiveDay).inDays;

    if (difference == 0) {
      // 今日はすでにアクティブ
      _state = _state.copyWith(
        streak: _state.streak.copyWith(isActiveToday: true),
      );
    } else if (difference == 1) {
      // 連続日数を増やす
      final newStreak = _state.streak.currentStreak + 1;
      _updateStreak(today, newStreak);
      _addDrops(5 + (newStreak ~/ 7) * 5, DropSource.dailyLogin);
      _checkStreakAchievements(newStreak);
    } else {
      // ストリークリセット
      _updateStreak(today, 1);
      _addDrops(5, DropSource.dailyLogin);
    }
  }

  void _updateStreak(DateTime date, int newStreak) {
    final maxStreak = newStreak > _state.streak.maxStreak
        ? newStreak
        : _state.streak.maxStreak;

    _state = _state.copyWith(
      streak: DaysStreak(
        currentStreak: newStreak,
        maxStreak: maxStreak,
        lastActiveDate: date,
        isActiveToday: true,
      ),
    );
    _saveState();
  }

  /// ドロップを追加
  void _addDrops(int amount, DropSource source) {
    _state = _state.copyWith(
      drops: DropBalance(
        amount: _state.drops.amount + amount,
        todayEarned: _state.drops.todayEarned + amount,
        lastEarnedAt: DateTime.now(),
      ),
    );
    _saveState();
  }

  // ========== PUBLIC METHODS ==========

  /// レッスン完了時
  void onLessonComplete() {
    _addDrops(10, DropSource.lessonComplete);
    _state = _state.copyWith(
      totalLessonsCompleted: _state.totalLessonsCompleted + 1,
    );
    _checkLessonAchievements();
    _saveState();
  }

  /// クイズ正解時
  void onQuizCorrect() {
    _addDrops(3, DropSource.quizCorrect);
    _state = _state.copyWith(totalQuizCorrect: _state.totalQuizCorrect + 1);
    _saveState();
  }

  /// ワーク完了時
  void onWorkComplete() {
    _addDrops(5, DropSource.workComplete);
    _saveState();
  }

  // ========== ACHIEVEMENT CHECKS ==========

  void _checkStreakAchievements(int streak) {
    if (streak >= 3) _unlockAchievement('streak-3');
    if (streak >= 7) _unlockAchievement('streak-7');
    if (streak >= 30) _unlockAchievement('streak-30');
  }

  void _checkLessonAchievements() {
    if (_state.totalLessonsCompleted == 1) _unlockAchievement('first-lesson');
    if (_state.totalLessonsCompleted >= 10) _unlockAchievement('lessons-10');
  }

  void _unlockAchievement(String achievementId) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'achievement_$achievementId';

    if (prefs.getBool(key) == true) return; // 既に解除済み

    await prefs.setBool(key, true);

    // 実績報酬を付与
    final achievement = Achievements.all.firstWhere(
      (a) => a.id == achievementId,
      orElse: () => throw Exception('Achievement not found: $achievementId'),
    );
    _addDrops(achievement.dropReward, DropSource.achievement);

    debugPrint('Achievement unlocked: ${achievement.title}');
  }

  /// 実績の解除状態を取得
  Future<List<Achievement>> getUnlockedAchievements() async {
    final prefs = await SharedPreferences.getInstance();

    return Achievements.all.map((achievement) {
      final isUnlocked =
          prefs.getBool('achievement_${achievement.id}') ?? false;
      return achievement.copyWith(isUnlocked: isUnlocked);
    }).toList();
  }
}
