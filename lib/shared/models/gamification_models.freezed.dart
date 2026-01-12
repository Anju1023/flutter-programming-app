// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gamification_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DropBalance _$DropBalanceFromJson(Map<String, dynamic> json) {
  return _DropBalance.fromJson(json);
}

/// @nodoc
mixin _$DropBalance {
  int get amount => throw _privateConstructorUsedError;
  int get todayEarned => throw _privateConstructorUsedError;
  DateTime? get lastEarnedAt => throw _privateConstructorUsedError;

  /// Serializes this DropBalance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DropBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropBalanceCopyWith<DropBalance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropBalanceCopyWith<$Res> {
  factory $DropBalanceCopyWith(
    DropBalance value,
    $Res Function(DropBalance) then,
  ) = _$DropBalanceCopyWithImpl<$Res, DropBalance>;
  @useResult
  $Res call({int amount, int todayEarned, DateTime? lastEarnedAt});
}

/// @nodoc
class _$DropBalanceCopyWithImpl<$Res, $Val extends DropBalance>
    implements $DropBalanceCopyWith<$Res> {
  _$DropBalanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? todayEarned = null,
    Object? lastEarnedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            todayEarned: null == todayEarned
                ? _value.todayEarned
                : todayEarned // ignore: cast_nullable_to_non_nullable
                      as int,
            lastEarnedAt: freezed == lastEarnedAt
                ? _value.lastEarnedAt
                : lastEarnedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DropBalanceImplCopyWith<$Res>
    implements $DropBalanceCopyWith<$Res> {
  factory _$$DropBalanceImplCopyWith(
    _$DropBalanceImpl value,
    $Res Function(_$DropBalanceImpl) then,
  ) = __$$DropBalanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, int todayEarned, DateTime? lastEarnedAt});
}

/// @nodoc
class __$$DropBalanceImplCopyWithImpl<$Res>
    extends _$DropBalanceCopyWithImpl<$Res, _$DropBalanceImpl>
    implements _$$DropBalanceImplCopyWith<$Res> {
  __$$DropBalanceImplCopyWithImpl(
    _$DropBalanceImpl _value,
    $Res Function(_$DropBalanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DropBalance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? todayEarned = null,
    Object? lastEarnedAt = freezed,
  }) {
    return _then(
      _$DropBalanceImpl(
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        todayEarned: null == todayEarned
            ? _value.todayEarned
            : todayEarned // ignore: cast_nullable_to_non_nullable
                  as int,
        lastEarnedAt: freezed == lastEarnedAt
            ? _value.lastEarnedAt
            : lastEarnedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DropBalanceImpl implements _DropBalance {
  const _$DropBalanceImpl({
    required this.amount,
    this.todayEarned = 0,
    this.lastEarnedAt,
  });

  factory _$DropBalanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropBalanceImplFromJson(json);

  @override
  final int amount;
  @override
  @JsonKey()
  final int todayEarned;
  @override
  final DateTime? lastEarnedAt;

  @override
  String toString() {
    return 'DropBalance(amount: $amount, todayEarned: $todayEarned, lastEarnedAt: $lastEarnedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropBalanceImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.todayEarned, todayEarned) ||
                other.todayEarned == todayEarned) &&
            (identical(other.lastEarnedAt, lastEarnedAt) ||
                other.lastEarnedAt == lastEarnedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, todayEarned, lastEarnedAt);

  /// Create a copy of DropBalance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropBalanceImplCopyWith<_$DropBalanceImpl> get copyWith =>
      __$$DropBalanceImplCopyWithImpl<_$DropBalanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DropBalanceImplToJson(this);
  }
}

abstract class _DropBalance implements DropBalance {
  const factory _DropBalance({
    required final int amount,
    final int todayEarned,
    final DateTime? lastEarnedAt,
  }) = _$DropBalanceImpl;

  factory _DropBalance.fromJson(Map<String, dynamic> json) =
      _$DropBalanceImpl.fromJson;

  @override
  int get amount;
  @override
  int get todayEarned;
  @override
  DateTime? get lastEarnedAt;

  /// Create a copy of DropBalance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropBalanceImplCopyWith<_$DropBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DropTransaction _$DropTransactionFromJson(Map<String, dynamic> json) {
  return _DropTransaction.fromJson(json);
}

/// @nodoc
mixin _$DropTransaction {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  DropSource get source => throw _privateConstructorUsedError;
  DateTime get earnedAt => throw _privateConstructorUsedError;
  String? get lessonId => throw _privateConstructorUsedError;

  /// Serializes this DropTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DropTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropTransactionCopyWith<DropTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropTransactionCopyWith<$Res> {
  factory $DropTransactionCopyWith(
    DropTransaction value,
    $Res Function(DropTransaction) then,
  ) = _$DropTransactionCopyWithImpl<$Res, DropTransaction>;
  @useResult
  $Res call({
    String id,
    int amount,
    DropSource source,
    DateTime earnedAt,
    String? lessonId,
  });
}

/// @nodoc
class _$DropTransactionCopyWithImpl<$Res, $Val extends DropTransaction>
    implements $DropTransactionCopyWith<$Res> {
  _$DropTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? source = null,
    Object? earnedAt = null,
    Object? lessonId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            source: null == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as DropSource,
            earnedAt: null == earnedAt
                ? _value.earnedAt
                : earnedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            lessonId: freezed == lessonId
                ? _value.lessonId
                : lessonId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DropTransactionImplCopyWith<$Res>
    implements $DropTransactionCopyWith<$Res> {
  factory _$$DropTransactionImplCopyWith(
    _$DropTransactionImpl value,
    $Res Function(_$DropTransactionImpl) then,
  ) = __$$DropTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    int amount,
    DropSource source,
    DateTime earnedAt,
    String? lessonId,
  });
}

/// @nodoc
class __$$DropTransactionImplCopyWithImpl<$Res>
    extends _$DropTransactionCopyWithImpl<$Res, _$DropTransactionImpl>
    implements _$$DropTransactionImplCopyWith<$Res> {
  __$$DropTransactionImplCopyWithImpl(
    _$DropTransactionImpl _value,
    $Res Function(_$DropTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DropTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
    Object? source = null,
    Object? earnedAt = null,
    Object? lessonId = freezed,
  }) {
    return _then(
      _$DropTransactionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        source: null == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as DropSource,
        earnedAt: null == earnedAt
            ? _value.earnedAt
            : earnedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        lessonId: freezed == lessonId
            ? _value.lessonId
            : lessonId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DropTransactionImpl implements _DropTransaction {
  const _$DropTransactionImpl({
    required this.id,
    required this.amount,
    required this.source,
    required this.earnedAt,
    this.lessonId,
  });

  factory _$DropTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropTransactionImplFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final DropSource source;
  @override
  final DateTime earnedAt;
  @override
  final String? lessonId;

  @override
  String toString() {
    return 'DropTransaction(id: $id, amount: $amount, source: $source, earnedAt: $earnedAt, lessonId: $lessonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.earnedAt, earnedAt) ||
                other.earnedAt == earnedAt) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, amount, source, earnedAt, lessonId);

  /// Create a copy of DropTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropTransactionImplCopyWith<_$DropTransactionImpl> get copyWith =>
      __$$DropTransactionImplCopyWithImpl<_$DropTransactionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DropTransactionImplToJson(this);
  }
}

abstract class _DropTransaction implements DropTransaction {
  const factory _DropTransaction({
    required final String id,
    required final int amount,
    required final DropSource source,
    required final DateTime earnedAt,
    final String? lessonId,
  }) = _$DropTransactionImpl;

  factory _DropTransaction.fromJson(Map<String, dynamic> json) =
      _$DropTransactionImpl.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  DropSource get source;
  @override
  DateTime get earnedAt;
  @override
  String? get lessonId;

  /// Create a copy of DropTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropTransactionImplCopyWith<_$DropTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DaysStreak _$DaysStreakFromJson(Map<String, dynamic> json) {
  return _DaysStreak.fromJson(json);
}

/// @nodoc
mixin _$DaysStreak {
  int get currentStreak => throw _privateConstructorUsedError;
  int get maxStreak => throw _privateConstructorUsedError;
  DateTime? get lastActiveDate => throw _privateConstructorUsedError;
  bool get isActiveToday => throw _privateConstructorUsedError;

  /// Serializes this DaysStreak to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DaysStreak
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DaysStreakCopyWith<DaysStreak> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaysStreakCopyWith<$Res> {
  factory $DaysStreakCopyWith(
    DaysStreak value,
    $Res Function(DaysStreak) then,
  ) = _$DaysStreakCopyWithImpl<$Res, DaysStreak>;
  @useResult
  $Res call({
    int currentStreak,
    int maxStreak,
    DateTime? lastActiveDate,
    bool isActiveToday,
  });
}

/// @nodoc
class _$DaysStreakCopyWithImpl<$Res, $Val extends DaysStreak>
    implements $DaysStreakCopyWith<$Res> {
  _$DaysStreakCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DaysStreak
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStreak = null,
    Object? maxStreak = null,
    Object? lastActiveDate = freezed,
    Object? isActiveToday = null,
  }) {
    return _then(
      _value.copyWith(
            currentStreak: null == currentStreak
                ? _value.currentStreak
                : currentStreak // ignore: cast_nullable_to_non_nullable
                      as int,
            maxStreak: null == maxStreak
                ? _value.maxStreak
                : maxStreak // ignore: cast_nullable_to_non_nullable
                      as int,
            lastActiveDate: freezed == lastActiveDate
                ? _value.lastActiveDate
                : lastActiveDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            isActiveToday: null == isActiveToday
                ? _value.isActiveToday
                : isActiveToday // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DaysStreakImplCopyWith<$Res>
    implements $DaysStreakCopyWith<$Res> {
  factory _$$DaysStreakImplCopyWith(
    _$DaysStreakImpl value,
    $Res Function(_$DaysStreakImpl) then,
  ) = __$$DaysStreakImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentStreak,
    int maxStreak,
    DateTime? lastActiveDate,
    bool isActiveToday,
  });
}

/// @nodoc
class __$$DaysStreakImplCopyWithImpl<$Res>
    extends _$DaysStreakCopyWithImpl<$Res, _$DaysStreakImpl>
    implements _$$DaysStreakImplCopyWith<$Res> {
  __$$DaysStreakImplCopyWithImpl(
    _$DaysStreakImpl _value,
    $Res Function(_$DaysStreakImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DaysStreak
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStreak = null,
    Object? maxStreak = null,
    Object? lastActiveDate = freezed,
    Object? isActiveToday = null,
  }) {
    return _then(
      _$DaysStreakImpl(
        currentStreak: null == currentStreak
            ? _value.currentStreak
            : currentStreak // ignore: cast_nullable_to_non_nullable
                  as int,
        maxStreak: null == maxStreak
            ? _value.maxStreak
            : maxStreak // ignore: cast_nullable_to_non_nullable
                  as int,
        lastActiveDate: freezed == lastActiveDate
            ? _value.lastActiveDate
            : lastActiveDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        isActiveToday: null == isActiveToday
            ? _value.isActiveToday
            : isActiveToday // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DaysStreakImpl implements _DaysStreak {
  const _$DaysStreakImpl({
    required this.currentStreak,
    required this.maxStreak,
    this.lastActiveDate,
    this.isActiveToday = false,
  });

  factory _$DaysStreakImpl.fromJson(Map<String, dynamic> json) =>
      _$$DaysStreakImplFromJson(json);

  @override
  final int currentStreak;
  @override
  final int maxStreak;
  @override
  final DateTime? lastActiveDate;
  @override
  @JsonKey()
  final bool isActiveToday;

  @override
  String toString() {
    return 'DaysStreak(currentStreak: $currentStreak, maxStreak: $maxStreak, lastActiveDate: $lastActiveDate, isActiveToday: $isActiveToday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaysStreakImpl &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.maxStreak, maxStreak) ||
                other.maxStreak == maxStreak) &&
            (identical(other.lastActiveDate, lastActiveDate) ||
                other.lastActiveDate == lastActiveDate) &&
            (identical(other.isActiveToday, isActiveToday) ||
                other.isActiveToday == isActiveToday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentStreak,
    maxStreak,
    lastActiveDate,
    isActiveToday,
  );

  /// Create a copy of DaysStreak
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DaysStreakImplCopyWith<_$DaysStreakImpl> get copyWith =>
      __$$DaysStreakImplCopyWithImpl<_$DaysStreakImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DaysStreakImplToJson(this);
  }
}

abstract class _DaysStreak implements DaysStreak {
  const factory _DaysStreak({
    required final int currentStreak,
    required final int maxStreak,
    final DateTime? lastActiveDate,
    final bool isActiveToday,
  }) = _$DaysStreakImpl;

  factory _DaysStreak.fromJson(Map<String, dynamic> json) =
      _$DaysStreakImpl.fromJson;

  @override
  int get currentStreak;
  @override
  int get maxStreak;
  @override
  DateTime? get lastActiveDate;
  @override
  bool get isActiveToday;

  /// Create a copy of DaysStreak
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DaysStreakImplCopyWith<_$DaysStreakImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return _Achievement.fromJson(json);
}

/// @nodoc
mixin _$Achievement {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get iconName => throw _privateConstructorUsedError;
  AchievementCategory get category => throw _privateConstructorUsedError;
  int get dropReward => throw _privateConstructorUsedError;
  bool get isUnlocked => throw _privateConstructorUsedError;
  DateTime? get unlockedAt => throw _privateConstructorUsedError;

  /// Serializes this Achievement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AchievementCopyWith<Achievement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AchievementCopyWith<$Res> {
  factory $AchievementCopyWith(
    Achievement value,
    $Res Function(Achievement) then,
  ) = _$AchievementCopyWithImpl<$Res, Achievement>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String iconName,
    AchievementCategory category,
    int dropReward,
    bool isUnlocked,
    DateTime? unlockedAt,
  });
}

/// @nodoc
class _$AchievementCopyWithImpl<$Res, $Val extends Achievement>
    implements $AchievementCopyWith<$Res> {
  _$AchievementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconName = null,
    Object? category = null,
    Object? dropReward = null,
    Object? isUnlocked = null,
    Object? unlockedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            iconName: null == iconName
                ? _value.iconName
                : iconName // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as AchievementCategory,
            dropReward: null == dropReward
                ? _value.dropReward
                : dropReward // ignore: cast_nullable_to_non_nullable
                      as int,
            isUnlocked: null == isUnlocked
                ? _value.isUnlocked
                : isUnlocked // ignore: cast_nullable_to_non_nullable
                      as bool,
            unlockedAt: freezed == unlockedAt
                ? _value.unlockedAt
                : unlockedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AchievementImplCopyWith<$Res>
    implements $AchievementCopyWith<$Res> {
  factory _$$AchievementImplCopyWith(
    _$AchievementImpl value,
    $Res Function(_$AchievementImpl) then,
  ) = __$$AchievementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String iconName,
    AchievementCategory category,
    int dropReward,
    bool isUnlocked,
    DateTime? unlockedAt,
  });
}

/// @nodoc
class __$$AchievementImplCopyWithImpl<$Res>
    extends _$AchievementCopyWithImpl<$Res, _$AchievementImpl>
    implements _$$AchievementImplCopyWith<$Res> {
  __$$AchievementImplCopyWithImpl(
    _$AchievementImpl _value,
    $Res Function(_$AchievementImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconName = null,
    Object? category = null,
    Object? dropReward = null,
    Object? isUnlocked = null,
    Object? unlockedAt = freezed,
  }) {
    return _then(
      _$AchievementImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        iconName: null == iconName
            ? _value.iconName
            : iconName // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as AchievementCategory,
        dropReward: null == dropReward
            ? _value.dropReward
            : dropReward // ignore: cast_nullable_to_non_nullable
                  as int,
        isUnlocked: null == isUnlocked
            ? _value.isUnlocked
            : isUnlocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        unlockedAt: freezed == unlockedAt
            ? _value.unlockedAt
            : unlockedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AchievementImpl implements _Achievement {
  const _$AchievementImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.iconName,
    required this.category,
    required this.dropReward,
    this.isUnlocked = false,
    this.unlockedAt,
  });

  factory _$AchievementImpl.fromJson(Map<String, dynamic> json) =>
      _$$AchievementImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String iconName;
  @override
  final AchievementCategory category;
  @override
  final int dropReward;
  @override
  @JsonKey()
  final bool isUnlocked;
  @override
  final DateTime? unlockedAt;

  @override
  String toString() {
    return 'Achievement(id: $id, title: $title, description: $description, iconName: $iconName, category: $category, dropReward: $dropReward, isUnlocked: $isUnlocked, unlockedAt: $unlockedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AchievementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dropReward, dropReward) ||
                other.dropReward == dropReward) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked) &&
            (identical(other.unlockedAt, unlockedAt) ||
                other.unlockedAt == unlockedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    iconName,
    category,
    dropReward,
    isUnlocked,
    unlockedAt,
  );

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      __$$AchievementImplCopyWithImpl<_$AchievementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AchievementImplToJson(this);
  }
}

abstract class _Achievement implements Achievement {
  const factory _Achievement({
    required final String id,
    required final String title,
    required final String description,
    required final String iconName,
    required final AchievementCategory category,
    required final int dropReward,
    final bool isUnlocked,
    final DateTime? unlockedAt,
  }) = _$AchievementImpl;

  factory _Achievement.fromJson(Map<String, dynamic> json) =
      _$AchievementImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get iconName;
  @override
  AchievementCategory get category;
  @override
  int get dropReward;
  @override
  bool get isUnlocked;
  @override
  DateTime? get unlockedAt;

  /// Create a copy of Achievement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AchievementImplCopyWith<_$AchievementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GamificationState _$GamificationStateFromJson(Map<String, dynamic> json) {
  return _GamificationState.fromJson(json);
}

/// @nodoc
mixin _$GamificationState {
  DropBalance get drops => throw _privateConstructorUsedError;
  DaysStreak get streak => throw _privateConstructorUsedError;
  List<Achievement> get achievements => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  int get totalLessonsCompleted => throw _privateConstructorUsedError;
  int get totalQuizCorrect => throw _privateConstructorUsedError;

  /// Serializes this GamificationState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GamificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamificationStateCopyWith<GamificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamificationStateCopyWith<$Res> {
  factory $GamificationStateCopyWith(
    GamificationState value,
    $Res Function(GamificationState) then,
  ) = _$GamificationStateCopyWithImpl<$Res, GamificationState>;
  @useResult
  $Res call({
    DropBalance drops,
    DaysStreak streak,
    List<Achievement> achievements,
    int level,
    int totalLessonsCompleted,
    int totalQuizCorrect,
  });

  $DropBalanceCopyWith<$Res> get drops;
  $DaysStreakCopyWith<$Res> get streak;
}

/// @nodoc
class _$GamificationStateCopyWithImpl<$Res, $Val extends GamificationState>
    implements $GamificationStateCopyWith<$Res> {
  _$GamificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drops = null,
    Object? streak = null,
    Object? achievements = null,
    Object? level = null,
    Object? totalLessonsCompleted = null,
    Object? totalQuizCorrect = null,
  }) {
    return _then(
      _value.copyWith(
            drops: null == drops
                ? _value.drops
                : drops // ignore: cast_nullable_to_non_nullable
                      as DropBalance,
            streak: null == streak
                ? _value.streak
                : streak // ignore: cast_nullable_to_non_nullable
                      as DaysStreak,
            achievements: null == achievements
                ? _value.achievements
                : achievements // ignore: cast_nullable_to_non_nullable
                      as List<Achievement>,
            level: null == level
                ? _value.level
                : level // ignore: cast_nullable_to_non_nullable
                      as int,
            totalLessonsCompleted: null == totalLessonsCompleted
                ? _value.totalLessonsCompleted
                : totalLessonsCompleted // ignore: cast_nullable_to_non_nullable
                      as int,
            totalQuizCorrect: null == totalQuizCorrect
                ? _value.totalQuizCorrect
                : totalQuizCorrect // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of GamificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DropBalanceCopyWith<$Res> get drops {
    return $DropBalanceCopyWith<$Res>(_value.drops, (value) {
      return _then(_value.copyWith(drops: value) as $Val);
    });
  }

  /// Create a copy of GamificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DaysStreakCopyWith<$Res> get streak {
    return $DaysStreakCopyWith<$Res>(_value.streak, (value) {
      return _then(_value.copyWith(streak: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GamificationStateImplCopyWith<$Res>
    implements $GamificationStateCopyWith<$Res> {
  factory _$$GamificationStateImplCopyWith(
    _$GamificationStateImpl value,
    $Res Function(_$GamificationStateImpl) then,
  ) = __$$GamificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DropBalance drops,
    DaysStreak streak,
    List<Achievement> achievements,
    int level,
    int totalLessonsCompleted,
    int totalQuizCorrect,
  });

  @override
  $DropBalanceCopyWith<$Res> get drops;
  @override
  $DaysStreakCopyWith<$Res> get streak;
}

/// @nodoc
class __$$GamificationStateImplCopyWithImpl<$Res>
    extends _$GamificationStateCopyWithImpl<$Res, _$GamificationStateImpl>
    implements _$$GamificationStateImplCopyWith<$Res> {
  __$$GamificationStateImplCopyWithImpl(
    _$GamificationStateImpl _value,
    $Res Function(_$GamificationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GamificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drops = null,
    Object? streak = null,
    Object? achievements = null,
    Object? level = null,
    Object? totalLessonsCompleted = null,
    Object? totalQuizCorrect = null,
  }) {
    return _then(
      _$GamificationStateImpl(
        drops: null == drops
            ? _value.drops
            : drops // ignore: cast_nullable_to_non_nullable
                  as DropBalance,
        streak: null == streak
            ? _value.streak
            : streak // ignore: cast_nullable_to_non_nullable
                  as DaysStreak,
        achievements: null == achievements
            ? _value._achievements
            : achievements // ignore: cast_nullable_to_non_nullable
                  as List<Achievement>,
        level: null == level
            ? _value.level
            : level // ignore: cast_nullable_to_non_nullable
                  as int,
        totalLessonsCompleted: null == totalLessonsCompleted
            ? _value.totalLessonsCompleted
            : totalLessonsCompleted // ignore: cast_nullable_to_non_nullable
                  as int,
        totalQuizCorrect: null == totalQuizCorrect
            ? _value.totalQuizCorrect
            : totalQuizCorrect // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GamificationStateImpl implements _GamificationState {
  const _$GamificationStateImpl({
    required this.drops,
    required this.streak,
    final List<Achievement> achievements = const [],
    this.level = 1,
    this.totalLessonsCompleted = 0,
    this.totalQuizCorrect = 0,
  }) : _achievements = achievements;

  factory _$GamificationStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamificationStateImplFromJson(json);

  @override
  final DropBalance drops;
  @override
  final DaysStreak streak;
  final List<Achievement> _achievements;
  @override
  @JsonKey()
  List<Achievement> get achievements {
    if (_achievements is EqualUnmodifiableListView) return _achievements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_achievements);
  }

  @override
  @JsonKey()
  final int level;
  @override
  @JsonKey()
  final int totalLessonsCompleted;
  @override
  @JsonKey()
  final int totalQuizCorrect;

  @override
  String toString() {
    return 'GamificationState(drops: $drops, streak: $streak, achievements: $achievements, level: $level, totalLessonsCompleted: $totalLessonsCompleted, totalQuizCorrect: $totalQuizCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamificationStateImpl &&
            (identical(other.drops, drops) || other.drops == drops) &&
            (identical(other.streak, streak) || other.streak == streak) &&
            const DeepCollectionEquality().equals(
              other._achievements,
              _achievements,
            ) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.totalLessonsCompleted, totalLessonsCompleted) ||
                other.totalLessonsCompleted == totalLessonsCompleted) &&
            (identical(other.totalQuizCorrect, totalQuizCorrect) ||
                other.totalQuizCorrect == totalQuizCorrect));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    drops,
    streak,
    const DeepCollectionEquality().hash(_achievements),
    level,
    totalLessonsCompleted,
    totalQuizCorrect,
  );

  /// Create a copy of GamificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamificationStateImplCopyWith<_$GamificationStateImpl> get copyWith =>
      __$$GamificationStateImplCopyWithImpl<_$GamificationStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GamificationStateImplToJson(this);
  }
}

abstract class _GamificationState implements GamificationState {
  const factory _GamificationState({
    required final DropBalance drops,
    required final DaysStreak streak,
    final List<Achievement> achievements,
    final int level,
    final int totalLessonsCompleted,
    final int totalQuizCorrect,
  }) = _$GamificationStateImpl;

  factory _GamificationState.fromJson(Map<String, dynamic> json) =
      _$GamificationStateImpl.fromJson;

  @override
  DropBalance get drops;
  @override
  DaysStreak get streak;
  @override
  List<Achievement> get achievements;
  @override
  int get level;
  @override
  int get totalLessonsCompleted;
  @override
  int get totalQuizCorrect;

  /// Create a copy of GamificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamificationStateImplCopyWith<_$GamificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
