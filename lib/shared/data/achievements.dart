import '../models/gamification_models.dart';

/// 定義済み実績リスト
class Achievements {
  Achievements._();

  /// 全実績
  static List<Achievement> get all => [
    // ========== 学習系 ==========
    const Achievement(
      id: 'first-lesson',
      title: 'はじめの一歩',
      description: '最初のレッスンを完了した',
      iconName: 'star',
      category: AchievementCategory.learning,
      dropReward: 10,
    ),
    const Achievement(
      id: 'first-code',
      title: 'Hello, World!',
      description: '最初のコードを実行した',
      iconName: 'code',
      category: AchievementCategory.learning,
      dropReward: 15,
    ),
    const Achievement(
      id: 'quiz-master-5',
      title: 'クイズマスター',
      description: 'クイズに5回連続で正解した',
      iconName: 'check_circle',
      category: AchievementCategory.learning,
      dropReward: 20,
    ),
    const Achievement(
      id: 'perfect-lesson',
      title: 'パーフェクト',
      description: 'レッスンをノーミスで完了した',
      iconName: 'emoji_events',
      category: AchievementCategory.learning,
      dropReward: 25,
    ),
    const Achievement(
      id: 'lessons-10',
      title: '学びの習慣',
      description: '10レッスンを完了した',
      iconName: 'school',
      category: AchievementCategory.learning,
      dropReward: 50,
    ),

    // ========== ストリーク系 ==========
    const Achievement(
      id: 'streak-3',
      title: '3日連続',
      description: '3日連続で学習した',
      iconName: 'local_fire_department',
      category: AchievementCategory.streak,
      dropReward: 15,
    ),
    const Achievement(
      id: 'streak-7',
      title: '1週間',
      description: '7日連続で学習した',
      iconName: 'whatshot',
      category: AchievementCategory.streak,
      dropReward: 30,
    ),
    const Achievement(
      id: 'streak-30',
      title: '習慣',
      description: '30日連続で学習した',
      iconName: 'celebration',
      category: AchievementCategory.streak,
      dropReward: 100,
    ),

    // ========== コレクション系 ==========
    const Achievement(
      id: 'unit-complete-1',
      title: 'ユニット制覇',
      description: '最初のユニットを完了した',
      iconName: 'folder_special',
      category: AchievementCategory.collection,
      dropReward: 30,
    ),
    const Achievement(
      id: 'drops-100',
      title: 'ドロップコレクター',
      description: '累計100ドロップを獲得した',
      iconName: 'water_drop',
      category: AchievementCategory.collection,
      dropReward: 20,
    ),

    // ========== 特別 ==========
    const Achievement(
      id: 'early-bird',
      title: '早起き',
      description: '朝6時前に学習した',
      iconName: 'wb_sunny',
      category: AchievementCategory.special,
      dropReward: 15,
    ),
    const Achievement(
      id: 'night-owl',
      title: 'ナイトオウル',
      description: '深夜0時以降に学習した',
      iconName: 'nightlight',
      category: AchievementCategory.special,
      dropReward: 15,
    ),
  ];
}
