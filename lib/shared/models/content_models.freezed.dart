// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get iconName => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  List<Unit> get units => throw _privateConstructorUsedError;

  /// Serializes this Course to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String iconName,
    int order,
    List<Unit> units,
  });
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconName = null,
    Object? order = null,
    Object? units = null,
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
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            units: null == units
                ? _value.units
                : units // ignore: cast_nullable_to_non_nullable
                      as List<Unit>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CourseImplCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$CourseImplCopyWith(
    _$CourseImpl value,
    $Res Function(_$CourseImpl) then,
  ) = __$$CourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String iconName,
    int order,
    List<Unit> units,
  });
}

/// @nodoc
class __$$CourseImplCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$CourseImpl>
    implements _$$CourseImplCopyWith<$Res> {
  __$$CourseImplCopyWithImpl(
    _$CourseImpl _value,
    $Res Function(_$CourseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? iconName = null,
    Object? order = null,
    Object? units = null,
  }) {
    return _then(
      _$CourseImpl(
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
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        units: null == units
            ? _value._units
            : units // ignore: cast_nullable_to_non_nullable
                  as List<Unit>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CourseImpl implements _Course {
  const _$CourseImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.iconName,
    required this.order,
    final List<Unit> units = const [],
  }) : _units = units;

  factory _$CourseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String iconName;
  @override
  final int order;
  final List<Unit> _units;
  @override
  @JsonKey()
  List<Unit> get units {
    if (_units is EqualUnmodifiableListView) return _units;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  String toString() {
    return 'Course(id: $id, title: $title, description: $description, iconName: $iconName, order: $order, units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._units, _units));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    iconName,
    order,
    const DeepCollectionEquality().hash(_units),
  );

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      __$$CourseImplCopyWithImpl<_$CourseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseImplToJson(this);
  }
}

abstract class _Course implements Course {
  const factory _Course({
    required final String id,
    required final String title,
    required final String description,
    required final String iconName,
    required final int order,
    final List<Unit> units,
  }) = _$CourseImpl;

  factory _Course.fromJson(Map<String, dynamic> json) = _$CourseImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get iconName;
  @override
  int get order;
  @override
  List<Unit> get units;

  /// Create a copy of Course
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseImplCopyWith<_$CourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Unit _$UnitFromJson(Map<String, dynamic> json) {
  return _Unit.fromJson(json);
}

/// @nodoc
mixin _$Unit {
  String get id => throw _privateConstructorUsedError;
  String get courseId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  List<Lesson> get lessons => throw _privateConstructorUsedError;

  /// Serializes this Unit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitCopyWith<Unit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitCopyWith<$Res> {
  factory $UnitCopyWith(Unit value, $Res Function(Unit) then) =
      _$UnitCopyWithImpl<$Res, Unit>;
  @useResult
  $Res call({
    String id,
    String courseId,
    String title,
    int order,
    List<Lesson> lessons,
  });
}

/// @nodoc
class _$UnitCopyWithImpl<$Res, $Val extends Unit>
    implements $UnitCopyWith<$Res> {
  _$UnitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? order = null,
    Object? lessons = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            courseId: null == courseId
                ? _value.courseId
                : courseId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            lessons: null == lessons
                ? _value.lessons
                : lessons // ignore: cast_nullable_to_non_nullable
                      as List<Lesson>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UnitImplCopyWith<$Res> implements $UnitCopyWith<$Res> {
  factory _$$UnitImplCopyWith(
    _$UnitImpl value,
    $Res Function(_$UnitImpl) then,
  ) = __$$UnitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String courseId,
    String title,
    int order,
    List<Lesson> lessons,
  });
}

/// @nodoc
class __$$UnitImplCopyWithImpl<$Res>
    extends _$UnitCopyWithImpl<$Res, _$UnitImpl>
    implements _$$UnitImplCopyWith<$Res> {
  __$$UnitImplCopyWithImpl(_$UnitImpl _value, $Res Function(_$UnitImpl) _then)
    : super(_value, _then);

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? courseId = null,
    Object? title = null,
    Object? order = null,
    Object? lessons = null,
  }) {
    return _then(
      _$UnitImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        courseId: null == courseId
            ? _value.courseId
            : courseId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        lessons: null == lessons
            ? _value._lessons
            : lessons // ignore: cast_nullable_to_non_nullable
                  as List<Lesson>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitImpl implements _Unit {
  const _$UnitImpl({
    required this.id,
    required this.courseId,
    required this.title,
    required this.order,
    final List<Lesson> lessons = const [],
  }) : _lessons = lessons;

  factory _$UnitImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitImplFromJson(json);

  @override
  final String id;
  @override
  final String courseId;
  @override
  final String title;
  @override
  final int order;
  final List<Lesson> _lessons;
  @override
  @JsonKey()
  List<Lesson> get lessons {
    if (_lessons is EqualUnmodifiableListView) return _lessons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lessons);
  }

  @override
  String toString() {
    return 'Unit(id: $id, courseId: $courseId, title: $title, order: $order, lessons: $lessons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._lessons, _lessons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    courseId,
    title,
    order,
    const DeepCollectionEquality().hash(_lessons),
  );

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      __$$UnitImplCopyWithImpl<_$UnitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitImplToJson(this);
  }
}

abstract class _Unit implements Unit {
  const factory _Unit({
    required final String id,
    required final String courseId,
    required final String title,
    required final int order,
    final List<Lesson> lessons,
  }) = _$UnitImpl;

  factory _Unit.fromJson(Map<String, dynamic> json) = _$UnitImpl.fromJson;

  @override
  String get id;
  @override
  String get courseId;
  @override
  String get title;
  @override
  int get order;
  @override
  List<Lesson> get lessons;

  /// Create a copy of Unit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitImplCopyWith<_$UnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  String get unitId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  int get estimatedMinutes => throw _privateConstructorUsedError;
  List<LessonStep> get steps => throw _privateConstructorUsedError;

  /// Serializes this Lesson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call({
    String id,
    String unitId,
    String title,
    String description,
    int order,
    int estimatedMinutes,
    List<LessonStep> steps,
  });
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unitId = null,
    Object? title = null,
    Object? description = null,
    Object? order = null,
    Object? estimatedMinutes = null,
    Object? steps = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            unitId: null == unitId
                ? _value.unitId
                : unitId // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            estimatedMinutes: null == estimatedMinutes
                ? _value.estimatedMinutes
                : estimatedMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            steps: null == steps
                ? _value.steps
                : steps // ignore: cast_nullable_to_non_nullable
                      as List<LessonStep>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LessonImplCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$LessonImplCopyWith(
    _$LessonImpl value,
    $Res Function(_$LessonImpl) then,
  ) = __$$LessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String unitId,
    String title,
    String description,
    int order,
    int estimatedMinutes,
    List<LessonStep> steps,
  });
}

/// @nodoc
class __$$LessonImplCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$LessonImpl>
    implements _$$LessonImplCopyWith<$Res> {
  __$$LessonImplCopyWithImpl(
    _$LessonImpl _value,
    $Res Function(_$LessonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unitId = null,
    Object? title = null,
    Object? description = null,
    Object? order = null,
    Object? estimatedMinutes = null,
    Object? steps = null,
  }) {
    return _then(
      _$LessonImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        unitId: null == unitId
            ? _value.unitId
            : unitId // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        estimatedMinutes: null == estimatedMinutes
            ? _value.estimatedMinutes
            : estimatedMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        steps: null == steps
            ? _value._steps
            : steps // ignore: cast_nullable_to_non_nullable
                  as List<LessonStep>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonImpl implements _Lesson {
  const _$LessonImpl({
    required this.id,
    required this.unitId,
    required this.title,
    required this.description,
    required this.order,
    required this.estimatedMinutes,
    final List<LessonStep> steps = const [],
  }) : _steps = steps;

  factory _$LessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonImplFromJson(json);

  @override
  final String id;
  @override
  final String unitId;
  @override
  final String title;
  @override
  final String description;
  @override
  final int order;
  @override
  final int estimatedMinutes;
  final List<LessonStep> _steps;
  @override
  @JsonKey()
  List<LessonStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  String toString() {
    return 'Lesson(id: $id, unitId: $unitId, title: $title, description: $description, order: $order, estimatedMinutes: $estimatedMinutes, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unitId, unitId) || other.unitId == unitId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.estimatedMinutes, estimatedMinutes) ||
                other.estimatedMinutes == estimatedMinutes) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    unitId,
    title,
    description,
    order,
    estimatedMinutes,
    const DeepCollectionEquality().hash(_steps),
  );

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      __$$LessonImplCopyWithImpl<_$LessonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonImplToJson(this);
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson({
    required final String id,
    required final String unitId,
    required final String title,
    required final String description,
    required final int order,
    required final int estimatedMinutes,
    final List<LessonStep> steps,
  }) = _$LessonImpl;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$LessonImpl.fromJson;

  @override
  String get id;
  @override
  String get unitId;
  @override
  String get title;
  @override
  String get description;
  @override
  int get order;
  @override
  int get estimatedMinutes;
  @override
  List<LessonStep> get steps;

  /// Create a copy of Lesson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonImplCopyWith<_$LessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LessonStep _$LessonStepFromJson(Map<String, dynamic> json) {
  return _LessonStep.fromJson(json);
}

/// @nodoc
mixin _$LessonStep {
  String get id => throw _privateConstructorUsedError;
  String get lessonId => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  LessonStepType get type => throw _privateConstructorUsedError;
  Map<String, dynamic> get content => throw _privateConstructorUsedError;

  /// Serializes this LessonStep to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LessonStepCopyWith<LessonStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonStepCopyWith<$Res> {
  factory $LessonStepCopyWith(
    LessonStep value,
    $Res Function(LessonStep) then,
  ) = _$LessonStepCopyWithImpl<$Res, LessonStep>;
  @useResult
  $Res call({
    String id,
    String lessonId,
    int order,
    LessonStepType type,
    Map<String, dynamic> content,
  });
}

/// @nodoc
class _$LessonStepCopyWithImpl<$Res, $Val extends LessonStep>
    implements $LessonStepCopyWith<$Res> {
  _$LessonStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? order = null,
    Object? type = null,
    Object? content = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            lessonId: null == lessonId
                ? _value.lessonId
                : lessonId // ignore: cast_nullable_to_non_nullable
                      as String,
            order: null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as LessonStepType,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LessonStepImplCopyWith<$Res>
    implements $LessonStepCopyWith<$Res> {
  factory _$$LessonStepImplCopyWith(
    _$LessonStepImpl value,
    $Res Function(_$LessonStepImpl) then,
  ) = __$$LessonStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String lessonId,
    int order,
    LessonStepType type,
    Map<String, dynamic> content,
  });
}

/// @nodoc
class __$$LessonStepImplCopyWithImpl<$Res>
    extends _$LessonStepCopyWithImpl<$Res, _$LessonStepImpl>
    implements _$$LessonStepImplCopyWith<$Res> {
  __$$LessonStepImplCopyWithImpl(
    _$LessonStepImpl _value,
    $Res Function(_$LessonStepImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lessonId = null,
    Object? order = null,
    Object? type = null,
    Object? content = null,
  }) {
    return _then(
      _$LessonStepImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        lessonId: null == lessonId
            ? _value.lessonId
            : lessonId // ignore: cast_nullable_to_non_nullable
                  as String,
        order: null == order
            ? _value.order
            : order // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as LessonStepType,
        content: null == content
            ? _value._content
            : content // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LessonStepImpl implements _LessonStep {
  const _$LessonStepImpl({
    required this.id,
    required this.lessonId,
    required this.order,
    required this.type,
    required final Map<String, dynamic> content,
  }) : _content = content;

  factory _$LessonStepImpl.fromJson(Map<String, dynamic> json) =>
      _$$LessonStepImplFromJson(json);

  @override
  final String id;
  @override
  final String lessonId;
  @override
  final int order;
  @override
  final LessonStepType type;
  final Map<String, dynamic> _content;
  @override
  Map<String, dynamic> get content {
    if (_content is EqualUnmodifiableMapView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_content);
  }

  @override
  String toString() {
    return 'LessonStep(id: $id, lessonId: $lessonId, order: $order, type: $type, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LessonStepImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    lessonId,
    order,
    type,
    const DeepCollectionEquality().hash(_content),
  );

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LessonStepImplCopyWith<_$LessonStepImpl> get copyWith =>
      __$$LessonStepImplCopyWithImpl<_$LessonStepImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LessonStepImplToJson(this);
  }
}

abstract class _LessonStep implements LessonStep {
  const factory _LessonStep({
    required final String id,
    required final String lessonId,
    required final int order,
    required final LessonStepType type,
    required final Map<String, dynamic> content,
  }) = _$LessonStepImpl;

  factory _LessonStep.fromJson(Map<String, dynamic> json) =
      _$LessonStepImpl.fromJson;

  @override
  String get id;
  @override
  String get lessonId;
  @override
  int get order;
  @override
  LessonStepType get type;
  @override
  Map<String, dynamic> get content;

  /// Create a copy of LessonStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LessonStepImplCopyWith<_$LessonStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StoryContent _$StoryContentFromJson(Map<String, dynamic> json) {
  return _StoryContent.fromJson(json);
}

/// @nodoc
mixin _$StoryContent {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this StoryContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoryContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoryContentCopyWith<StoryContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryContentCopyWith<$Res> {
  factory $StoryContentCopyWith(
    StoryContent value,
    $Res Function(StoryContent) then,
  ) = _$StoryContentCopyWithImpl<$Res, StoryContent>;
  @useResult
  $Res call({String title, String body, String? imageUrl});
}

/// @nodoc
class _$StoryContentCopyWithImpl<$Res, $Val extends StoryContent>
    implements $StoryContentCopyWith<$Res> {
  _$StoryContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoryContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StoryContentImplCopyWith<$Res>
    implements $StoryContentCopyWith<$Res> {
  factory _$$StoryContentImplCopyWith(
    _$StoryContentImpl value,
    $Res Function(_$StoryContentImpl) then,
  ) = __$$StoryContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String body, String? imageUrl});
}

/// @nodoc
class __$$StoryContentImplCopyWithImpl<$Res>
    extends _$StoryContentCopyWithImpl<$Res, _$StoryContentImpl>
    implements _$$StoryContentImplCopyWith<$Res> {
  __$$StoryContentImplCopyWithImpl(
    _$StoryContentImpl _value,
    $Res Function(_$StoryContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StoryContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _$StoryContentImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StoryContentImpl implements _StoryContent {
  const _$StoryContentImpl({
    required this.title,
    required this.body,
    this.imageUrl,
  });

  factory _$StoryContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoryContentImplFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'StoryContent(title: $title, body: $body, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoryContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, body, imageUrl);

  /// Create a copy of StoryContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoryContentImplCopyWith<_$StoryContentImpl> get copyWith =>
      __$$StoryContentImplCopyWithImpl<_$StoryContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoryContentImplToJson(this);
  }
}

abstract class _StoryContent implements StoryContent {
  const factory _StoryContent({
    required final String title,
    required final String body,
    final String? imageUrl,
  }) = _$StoryContentImpl;

  factory _StoryContent.fromJson(Map<String, dynamic> json) =
      _$StoryContentImpl.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  String? get imageUrl;

  /// Create a copy of StoryContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoryContentImplCopyWith<_$StoryContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuideContent _$GuideContentFromJson(Map<String, dynamic> json) {
  return _GuideContent.fromJson(json);
}

/// @nodoc
mixin _$GuideContent {
  String get title => throw _privateConstructorUsedError;
  List<GuideSlide> get slides => throw _privateConstructorUsedError;

  /// Serializes this GuideContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuideContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuideContentCopyWith<GuideContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideContentCopyWith<$Res> {
  factory $GuideContentCopyWith(
    GuideContent value,
    $Res Function(GuideContent) then,
  ) = _$GuideContentCopyWithImpl<$Res, GuideContent>;
  @useResult
  $Res call({String title, List<GuideSlide> slides});
}

/// @nodoc
class _$GuideContentCopyWithImpl<$Res, $Val extends GuideContent>
    implements $GuideContentCopyWith<$Res> {
  _$GuideContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuideContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? slides = null}) {
    return _then(
      _value.copyWith(
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            slides: null == slides
                ? _value.slides
                : slides // ignore: cast_nullable_to_non_nullable
                      as List<GuideSlide>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GuideContentImplCopyWith<$Res>
    implements $GuideContentCopyWith<$Res> {
  factory _$$GuideContentImplCopyWith(
    _$GuideContentImpl value,
    $Res Function(_$GuideContentImpl) then,
  ) = __$$GuideContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<GuideSlide> slides});
}

/// @nodoc
class __$$GuideContentImplCopyWithImpl<$Res>
    extends _$GuideContentCopyWithImpl<$Res, _$GuideContentImpl>
    implements _$$GuideContentImplCopyWith<$Res> {
  __$$GuideContentImplCopyWithImpl(
    _$GuideContentImpl _value,
    $Res Function(_$GuideContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuideContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = null, Object? slides = null}) {
    return _then(
      _$GuideContentImpl(
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        slides: null == slides
            ? _value._slides
            : slides // ignore: cast_nullable_to_non_nullable
                  as List<GuideSlide>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideContentImpl implements _GuideContent {
  const _$GuideContentImpl({
    required this.title,
    required final List<GuideSlide> slides,
  }) : _slides = slides;

  factory _$GuideContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideContentImplFromJson(json);

  @override
  final String title;
  final List<GuideSlide> _slides;
  @override
  List<GuideSlide> get slides {
    if (_slides is EqualUnmodifiableListView) return _slides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slides);
  }

  @override
  String toString() {
    return 'GuideContent(title: $title, slides: $slides)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideContentImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._slides, _slides));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    title,
    const DeepCollectionEquality().hash(_slides),
  );

  /// Create a copy of GuideContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideContentImplCopyWith<_$GuideContentImpl> get copyWith =>
      __$$GuideContentImplCopyWithImpl<_$GuideContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideContentImplToJson(this);
  }
}

abstract class _GuideContent implements GuideContent {
  const factory _GuideContent({
    required final String title,
    required final List<GuideSlide> slides,
  }) = _$GuideContentImpl;

  factory _GuideContent.fromJson(Map<String, dynamic> json) =
      _$GuideContentImpl.fromJson;

  @override
  String get title;
  @override
  List<GuideSlide> get slides;

  /// Create a copy of GuideContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuideContentImplCopyWith<_$GuideContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuideSlide _$GuideSlideFromJson(Map<String, dynamic> json) {
  return _GuideSlide.fromJson(json);
}

/// @nodoc
mixin _$GuideSlide {
  String get text => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this GuideSlide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GuideSlide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuideSlideCopyWith<GuideSlide> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideSlideCopyWith<$Res> {
  factory $GuideSlideCopyWith(
    GuideSlide value,
    $Res Function(GuideSlide) then,
  ) = _$GuideSlideCopyWithImpl<$Res, GuideSlide>;
  @useResult
  $Res call({String text, String? code, String? imageUrl});
}

/// @nodoc
class _$GuideSlideCopyWithImpl<$Res, $Val extends GuideSlide>
    implements $GuideSlideCopyWith<$Res> {
  _$GuideSlideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuideSlide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? code = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GuideSlideImplCopyWith<$Res>
    implements $GuideSlideCopyWith<$Res> {
  factory _$$GuideSlideImplCopyWith(
    _$GuideSlideImpl value,
    $Res Function(_$GuideSlideImpl) then,
  ) = __$$GuideSlideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, String? code, String? imageUrl});
}

/// @nodoc
class __$$GuideSlideImplCopyWithImpl<$Res>
    extends _$GuideSlideCopyWithImpl<$Res, _$GuideSlideImpl>
    implements _$$GuideSlideImplCopyWith<$Res> {
  __$$GuideSlideImplCopyWithImpl(
    _$GuideSlideImpl _value,
    $Res Function(_$GuideSlideImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GuideSlide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? code = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(
      _$GuideSlideImpl(
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: freezed == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideSlideImpl implements _GuideSlide {
  const _$GuideSlideImpl({required this.text, this.code, this.imageUrl});

  factory _$GuideSlideImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideSlideImplFromJson(json);

  @override
  final String text;
  @override
  final String? code;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'GuideSlide(text: $text, code: $code, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideSlideImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, code, imageUrl);

  /// Create a copy of GuideSlide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideSlideImplCopyWith<_$GuideSlideImpl> get copyWith =>
      __$$GuideSlideImplCopyWithImpl<_$GuideSlideImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideSlideImplToJson(this);
  }
}

abstract class _GuideSlide implements GuideSlide {
  const factory _GuideSlide({
    required final String text,
    final String? code,
    final String? imageUrl,
  }) = _$GuideSlideImpl;

  factory _GuideSlide.fromJson(Map<String, dynamic> json) =
      _$GuideSlideImpl.fromJson;

  @override
  String get text;
  @override
  String? get code;
  @override
  String? get imageUrl;

  /// Create a copy of GuideSlide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuideSlideImplCopyWith<_$GuideSlideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuizContent _$QuizContentFromJson(Map<String, dynamic> json) {
  return _QuizContent.fromJson(json);
}

/// @nodoc
mixin _$QuizContent {
  String get question => throw _privateConstructorUsedError;
  List<String> get options => throw _privateConstructorUsedError;
  int get correctIndex => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;

  /// Serializes this QuizContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizContentCopyWith<QuizContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizContentCopyWith<$Res> {
  factory $QuizContentCopyWith(
    QuizContent value,
    $Res Function(QuizContent) then,
  ) = _$QuizContentCopyWithImpl<$Res, QuizContent>;
  @useResult
  $Res call({
    String question,
    List<String> options,
    int correctIndex,
    String? explanation,
  });
}

/// @nodoc
class _$QuizContentCopyWithImpl<$Res, $Val extends QuizContent>
    implements $QuizContentCopyWith<$Res> {
  _$QuizContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? correctIndex = null,
    Object? explanation = freezed,
  }) {
    return _then(
      _value.copyWith(
            question: null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                      as String,
            options: null == options
                ? _value.options
                : options // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            correctIndex: null == correctIndex
                ? _value.correctIndex
                : correctIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            explanation: freezed == explanation
                ? _value.explanation
                : explanation // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$QuizContentImplCopyWith<$Res>
    implements $QuizContentCopyWith<$Res> {
  factory _$$QuizContentImplCopyWith(
    _$QuizContentImpl value,
    $Res Function(_$QuizContentImpl) then,
  ) = __$$QuizContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String question,
    List<String> options,
    int correctIndex,
    String? explanation,
  });
}

/// @nodoc
class __$$QuizContentImplCopyWithImpl<$Res>
    extends _$QuizContentCopyWithImpl<$Res, _$QuizContentImpl>
    implements _$$QuizContentImplCopyWith<$Res> {
  __$$QuizContentImplCopyWithImpl(
    _$QuizContentImpl _value,
    $Res Function(_$QuizContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QuizContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? correctIndex = null,
    Object? explanation = freezed,
  }) {
    return _then(
      _$QuizContentImpl(
        question: null == question
            ? _value.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
        options: null == options
            ? _value._options
            : options // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        correctIndex: null == correctIndex
            ? _value.correctIndex
            : correctIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        explanation: freezed == explanation
            ? _value.explanation
            : explanation // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizContentImpl implements _QuizContent {
  const _$QuizContentImpl({
    required this.question,
    required final List<String> options,
    required this.correctIndex,
    this.explanation,
  }) : _options = options;

  factory _$QuizContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizContentImplFromJson(json);

  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final int correctIndex;
  @override
  final String? explanation;

  @override
  String toString() {
    return 'QuizContent(question: $question, options: $options, correctIndex: $correctIndex, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizContentImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctIndex, correctIndex) ||
                other.correctIndex == correctIndex) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    question,
    const DeepCollectionEquality().hash(_options),
    correctIndex,
    explanation,
  );

  /// Create a copy of QuizContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizContentImplCopyWith<_$QuizContentImpl> get copyWith =>
      __$$QuizContentImplCopyWithImpl<_$QuizContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizContentImplToJson(this);
  }
}

abstract class _QuizContent implements QuizContent {
  const factory _QuizContent({
    required final String question,
    required final List<String> options,
    required final int correctIndex,
    final String? explanation,
  }) = _$QuizContentImpl;

  factory _QuizContent.fromJson(Map<String, dynamic> json) =
      _$QuizContentImpl.fromJson;

  @override
  String get question;
  @override
  List<String> get options;
  @override
  int get correctIndex;
  @override
  String? get explanation;

  /// Create a copy of QuizContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizContentImplCopyWith<_$QuizContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkContent _$WorkContentFromJson(Map<String, dynamic> json) {
  return _WorkContent.fromJson(json);
}

/// @nodoc
mixin _$WorkContent {
  String get instruction => throw _privateConstructorUsedError;
  String get initialCode => throw _privateConstructorUsedError;
  String get expectedOutput => throw _privateConstructorUsedError;
  String? get hint => throw _privateConstructorUsedError;
  String? get solution => throw _privateConstructorUsedError;

  /// Serializes this WorkContent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkContentCopyWith<WorkContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkContentCopyWith<$Res> {
  factory $WorkContentCopyWith(
    WorkContent value,
    $Res Function(WorkContent) then,
  ) = _$WorkContentCopyWithImpl<$Res, WorkContent>;
  @useResult
  $Res call({
    String instruction,
    String initialCode,
    String expectedOutput,
    String? hint,
    String? solution,
  });
}

/// @nodoc
class _$WorkContentCopyWithImpl<$Res, $Val extends WorkContent>
    implements $WorkContentCopyWith<$Res> {
  _$WorkContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instruction = null,
    Object? initialCode = null,
    Object? expectedOutput = null,
    Object? hint = freezed,
    Object? solution = freezed,
  }) {
    return _then(
      _value.copyWith(
            instruction: null == instruction
                ? _value.instruction
                : instruction // ignore: cast_nullable_to_non_nullable
                      as String,
            initialCode: null == initialCode
                ? _value.initialCode
                : initialCode // ignore: cast_nullable_to_non_nullable
                      as String,
            expectedOutput: null == expectedOutput
                ? _value.expectedOutput
                : expectedOutput // ignore: cast_nullable_to_non_nullable
                      as String,
            hint: freezed == hint
                ? _value.hint
                : hint // ignore: cast_nullable_to_non_nullable
                      as String?,
            solution: freezed == solution
                ? _value.solution
                : solution // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkContentImplCopyWith<$Res>
    implements $WorkContentCopyWith<$Res> {
  factory _$$WorkContentImplCopyWith(
    _$WorkContentImpl value,
    $Res Function(_$WorkContentImpl) then,
  ) = __$$WorkContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String instruction,
    String initialCode,
    String expectedOutput,
    String? hint,
    String? solution,
  });
}

/// @nodoc
class __$$WorkContentImplCopyWithImpl<$Res>
    extends _$WorkContentCopyWithImpl<$Res, _$WorkContentImpl>
    implements _$$WorkContentImplCopyWith<$Res> {
  __$$WorkContentImplCopyWithImpl(
    _$WorkContentImpl _value,
    $Res Function(_$WorkContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instruction = null,
    Object? initialCode = null,
    Object? expectedOutput = null,
    Object? hint = freezed,
    Object? solution = freezed,
  }) {
    return _then(
      _$WorkContentImpl(
        instruction: null == instruction
            ? _value.instruction
            : instruction // ignore: cast_nullable_to_non_nullable
                  as String,
        initialCode: null == initialCode
            ? _value.initialCode
            : initialCode // ignore: cast_nullable_to_non_nullable
                  as String,
        expectedOutput: null == expectedOutput
            ? _value.expectedOutput
            : expectedOutput // ignore: cast_nullable_to_non_nullable
                  as String,
        hint: freezed == hint
            ? _value.hint
            : hint // ignore: cast_nullable_to_non_nullable
                  as String?,
        solution: freezed == solution
            ? _value.solution
            : solution // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkContentImpl implements _WorkContent {
  const _$WorkContentImpl({
    required this.instruction,
    required this.initialCode,
    required this.expectedOutput,
    this.hint,
    this.solution,
  });

  factory _$WorkContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkContentImplFromJson(json);

  @override
  final String instruction;
  @override
  final String initialCode;
  @override
  final String expectedOutput;
  @override
  final String? hint;
  @override
  final String? solution;

  @override
  String toString() {
    return 'WorkContent(instruction: $instruction, initialCode: $initialCode, expectedOutput: $expectedOutput, hint: $hint, solution: $solution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkContentImpl &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.initialCode, initialCode) ||
                other.initialCode == initialCode) &&
            (identical(other.expectedOutput, expectedOutput) ||
                other.expectedOutput == expectedOutput) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.solution, solution) ||
                other.solution == solution));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    instruction,
    initialCode,
    expectedOutput,
    hint,
    solution,
  );

  /// Create a copy of WorkContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkContentImplCopyWith<_$WorkContentImpl> get copyWith =>
      __$$WorkContentImplCopyWithImpl<_$WorkContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkContentImplToJson(this);
  }
}

abstract class _WorkContent implements WorkContent {
  const factory _WorkContent({
    required final String instruction,
    required final String initialCode,
    required final String expectedOutput,
    final String? hint,
    final String? solution,
  }) = _$WorkContentImpl;

  factory _WorkContent.fromJson(Map<String, dynamic> json) =
      _$WorkContentImpl.fromJson;

  @override
  String get instruction;
  @override
  String get initialCode;
  @override
  String get expectedOutput;
  @override
  String? get hint;
  @override
  String? get solution;

  /// Create a copy of WorkContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkContentImplCopyWith<_$WorkContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProgress _$UserProgressFromJson(Map<String, dynamic> json) {
  return _UserProgress.fromJson(json);
}

/// @nodoc
mixin _$UserProgress {
  String get oderId => throw _privateConstructorUsedError;
  String get lessonId => throw _privateConstructorUsedError;
  String get stepId => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;

  /// Serializes this UserProgress to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProgressCopyWith<UserProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProgressCopyWith<$Res> {
  factory $UserProgressCopyWith(
    UserProgress value,
    $Res Function(UserProgress) then,
  ) = _$UserProgressCopyWithImpl<$Res, UserProgress>;
  @useResult
  $Res call({
    String oderId,
    String lessonId,
    String stepId,
    bool isCompleted,
    DateTime? completedAt,
    int? score,
  });
}

/// @nodoc
class _$UserProgressCopyWithImpl<$Res, $Val extends UserProgress>
    implements $UserProgressCopyWith<$Res> {
  _$UserProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oderId = null,
    Object? lessonId = null,
    Object? stepId = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? score = freezed,
  }) {
    return _then(
      _value.copyWith(
            oderId: null == oderId
                ? _value.oderId
                : oderId // ignore: cast_nullable_to_non_nullable
                      as String,
            lessonId: null == lessonId
                ? _value.lessonId
                : lessonId // ignore: cast_nullable_to_non_nullable
                      as String,
            stepId: null == stepId
                ? _value.stepId
                : stepId // ignore: cast_nullable_to_non_nullable
                      as String,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProgressImplCopyWith<$Res>
    implements $UserProgressCopyWith<$Res> {
  factory _$$UserProgressImplCopyWith(
    _$UserProgressImpl value,
    $Res Function(_$UserProgressImpl) then,
  ) = __$$UserProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String oderId,
    String lessonId,
    String stepId,
    bool isCompleted,
    DateTime? completedAt,
    int? score,
  });
}

/// @nodoc
class __$$UserProgressImplCopyWithImpl<$Res>
    extends _$UserProgressCopyWithImpl<$Res, _$UserProgressImpl>
    implements _$$UserProgressImplCopyWith<$Res> {
  __$$UserProgressImplCopyWithImpl(
    _$UserProgressImpl _value,
    $Res Function(_$UserProgressImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProgress
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oderId = null,
    Object? lessonId = null,
    Object? stepId = null,
    Object? isCompleted = null,
    Object? completedAt = freezed,
    Object? score = freezed,
  }) {
    return _then(
      _$UserProgressImpl(
        oderId: null == oderId
            ? _value.oderId
            : oderId // ignore: cast_nullable_to_non_nullable
                  as String,
        lessonId: null == lessonId
            ? _value.lessonId
            : lessonId // ignore: cast_nullable_to_non_nullable
                  as String,
        stepId: null == stepId
            ? _value.stepId
            : stepId // ignore: cast_nullable_to_non_nullable
                  as String,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProgressImpl implements _UserProgress {
  const _$UserProgressImpl({
    required this.oderId,
    required this.lessonId,
    required this.stepId,
    required this.isCompleted,
    this.completedAt,
    this.score,
  });

  factory _$UserProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProgressImplFromJson(json);

  @override
  final String oderId;
  @override
  final String lessonId;
  @override
  final String stepId;
  @override
  final bool isCompleted;
  @override
  final DateTime? completedAt;
  @override
  final int? score;

  @override
  String toString() {
    return 'UserProgress(oderId: $oderId, lessonId: $lessonId, stepId: $stepId, isCompleted: $isCompleted, completedAt: $completedAt, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProgressImpl &&
            (identical(other.oderId, oderId) || other.oderId == oderId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.stepId, stepId) || other.stepId == stepId) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    oderId,
    lessonId,
    stepId,
    isCompleted,
    completedAt,
    score,
  );

  /// Create a copy of UserProgress
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProgressImplCopyWith<_$UserProgressImpl> get copyWith =>
      __$$UserProgressImplCopyWithImpl<_$UserProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProgressImplToJson(this);
  }
}

abstract class _UserProgress implements UserProgress {
  const factory _UserProgress({
    required final String oderId,
    required final String lessonId,
    required final String stepId,
    required final bool isCompleted,
    final DateTime? completedAt,
    final int? score,
  }) = _$UserProgressImpl;

  factory _UserProgress.fromJson(Map<String, dynamic> json) =
      _$UserProgressImpl.fromJson;

  @override
  String get oderId;
  @override
  String get lessonId;
  @override
  String get stepId;
  @override
  bool get isCompleted;
  @override
  DateTime? get completedAt;
  @override
  int? get score;

  /// Create a copy of UserProgress
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProgressImplCopyWith<_$UserProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
