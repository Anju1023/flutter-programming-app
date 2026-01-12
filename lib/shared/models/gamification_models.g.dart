// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gamification_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DropBalanceImpl _$$DropBalanceImplFromJson(Map<String, dynamic> json) =>
    _$DropBalanceImpl(
      amount: (json['amount'] as num).toInt(),
      todayEarned: (json['todayEarned'] as num?)?.toInt() ?? 0,
      lastEarnedAt: json['lastEarnedAt'] == null
          ? null
          : DateTime.parse(json['lastEarnedAt'] as String),
    );

Map<String, dynamic> _$$DropBalanceImplToJson(_$DropBalanceImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'todayEarned': instance.todayEarned,
      'lastEarnedAt': instance.lastEarnedAt?.toIso8601String(),
    };

_$DropTransactionImpl _$$DropTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$DropTransactionImpl(
  id: json['id'] as String,
  amount: (json['amount'] as num).toInt(),
  source: $enumDecode(_$DropSourceEnumMap, json['source']),
  earnedAt: DateTime.parse(json['earnedAt'] as String),
  lessonId: json['lessonId'] as String?,
);

Map<String, dynamic> _$$DropTransactionImplToJson(
  _$DropTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount,
  'source': _$DropSourceEnumMap[instance.source]!,
  'earnedAt': instance.earnedAt.toIso8601String(),
  'lessonId': instance.lessonId,
};

const _$DropSourceEnumMap = {
  DropSource.lessonComplete: 'lessonComplete',
  DropSource.quizCorrect: 'quizCorrect',
  DropSource.workComplete: 'workComplete',
  DropSource.dailyLogin: 'dailyLogin',
  DropSource.streakBonus: 'streakBonus',
  DropSource.achievement: 'achievement',
};

_$DaysStreakImpl _$$DaysStreakImplFromJson(Map<String, dynamic> json) =>
    _$DaysStreakImpl(
      currentStreak: (json['currentStreak'] as num).toInt(),
      maxStreak: (json['maxStreak'] as num).toInt(),
      lastActiveDate: json['lastActiveDate'] == null
          ? null
          : DateTime.parse(json['lastActiveDate'] as String),
      isActiveToday: json['isActiveToday'] as bool? ?? false,
    );

Map<String, dynamic> _$$DaysStreakImplToJson(_$DaysStreakImpl instance) =>
    <String, dynamic>{
      'currentStreak': instance.currentStreak,
      'maxStreak': instance.maxStreak,
      'lastActiveDate': instance.lastActiveDate?.toIso8601String(),
      'isActiveToday': instance.isActiveToday,
    };

_$AchievementImpl _$$AchievementImplFromJson(Map<String, dynamic> json) =>
    _$AchievementImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      iconName: json['iconName'] as String,
      category: $enumDecode(_$AchievementCategoryEnumMap, json['category']),
      dropReward: (json['dropReward'] as num).toInt(),
      isUnlocked: json['isUnlocked'] as bool? ?? false,
      unlockedAt: json['unlockedAt'] == null
          ? null
          : DateTime.parse(json['unlockedAt'] as String),
    );

Map<String, dynamic> _$$AchievementImplToJson(_$AchievementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'iconName': instance.iconName,
      'category': _$AchievementCategoryEnumMap[instance.category]!,
      'dropReward': instance.dropReward,
      'isUnlocked': instance.isUnlocked,
      'unlockedAt': instance.unlockedAt?.toIso8601String(),
    };

const _$AchievementCategoryEnumMap = {
  AchievementCategory.learning: 'learning',
  AchievementCategory.streak: 'streak',
  AchievementCategory.collection: 'collection',
  AchievementCategory.special: 'special',
};

_$GamificationStateImpl _$$GamificationStateImplFromJson(
  Map<String, dynamic> json,
) => _$GamificationStateImpl(
  drops: DropBalance.fromJson(json['drops'] as Map<String, dynamic>),
  streak: DaysStreak.fromJson(json['streak'] as Map<String, dynamic>),
  achievements:
      (json['achievements'] as List<dynamic>?)
          ?.map((e) => Achievement.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  level: (json['level'] as num?)?.toInt() ?? 1,
  totalLessonsCompleted: (json['totalLessonsCompleted'] as num?)?.toInt() ?? 0,
  totalQuizCorrect: (json['totalQuizCorrect'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$GamificationStateImplToJson(
  _$GamificationStateImpl instance,
) => <String, dynamic>{
  'drops': instance.drops,
  'streak': instance.streak,
  'achievements': instance.achievements,
  'level': instance.level,
  'totalLessonsCompleted': instance.totalLessonsCompleted,
  'totalQuizCorrect': instance.totalQuizCorrect,
};
