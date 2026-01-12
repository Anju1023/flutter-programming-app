// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  iconName: json['iconName'] as String,
  order: (json['order'] as num).toInt(),
  units:
      (json['units'] as List<dynamic>?)
          ?.map((e) => Unit.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'iconName': instance.iconName,
      'order': instance.order,
      'units': instance.units,
    };

_$UnitImpl _$$UnitImplFromJson(Map<String, dynamic> json) => _$UnitImpl(
  id: json['id'] as String,
  courseId: json['courseId'] as String,
  title: json['title'] as String,
  order: (json['order'] as num).toInt(),
  lessons:
      (json['lessons'] as List<dynamic>?)
          ?.map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$UnitImplToJson(_$UnitImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'courseId': instance.courseId,
      'title': instance.title,
      'order': instance.order,
      'lessons': instance.lessons,
    };

_$LessonImpl _$$LessonImplFromJson(Map<String, dynamic> json) => _$LessonImpl(
  id: json['id'] as String,
  unitId: json['unitId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  order: (json['order'] as num).toInt(),
  estimatedMinutes: (json['estimatedMinutes'] as num).toInt(),
  steps:
      (json['steps'] as List<dynamic>?)
          ?.map((e) => LessonStep.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$LessonImplToJson(_$LessonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unitId': instance.unitId,
      'title': instance.title,
      'description': instance.description,
      'order': instance.order,
      'estimatedMinutes': instance.estimatedMinutes,
      'steps': instance.steps,
    };

_$LessonStepImpl _$$LessonStepImplFromJson(Map<String, dynamic> json) =>
    _$LessonStepImpl(
      id: json['id'] as String,
      lessonId: json['lessonId'] as String,
      order: (json['order'] as num).toInt(),
      type: $enumDecode(_$LessonStepTypeEnumMap, json['type']),
      content: json['content'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$LessonStepImplToJson(_$LessonStepImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lessonId': instance.lessonId,
      'order': instance.order,
      'type': _$LessonStepTypeEnumMap[instance.type]!,
      'content': instance.content,
    };

const _$LessonStepTypeEnumMap = {
  LessonStepType.story: 'story',
  LessonStepType.guide: 'guide',
  LessonStepType.quiz: 'quiz',
  LessonStepType.work: 'work',
};

_$StoryContentImpl _$$StoryContentImplFromJson(Map<String, dynamic> json) =>
    _$StoryContentImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$StoryContentImplToJson(_$StoryContentImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'imageUrl': instance.imageUrl,
    };

_$GuideContentImpl _$$GuideContentImplFromJson(Map<String, dynamic> json) =>
    _$GuideContentImpl(
      title: json['title'] as String,
      slides: (json['slides'] as List<dynamic>)
          .map((e) => GuideSlide.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GuideContentImplToJson(_$GuideContentImpl instance) =>
    <String, dynamic>{'title': instance.title, 'slides': instance.slides};

_$GuideSlideImpl _$$GuideSlideImplFromJson(Map<String, dynamic> json) =>
    _$GuideSlideImpl(
      text: json['text'] as String,
      code: json['code'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$GuideSlideImplToJson(_$GuideSlideImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'code': instance.code,
      'imageUrl': instance.imageUrl,
    };

_$QuizContentImpl _$$QuizContentImplFromJson(Map<String, dynamic> json) =>
    _$QuizContentImpl(
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      correctIndex: (json['correctIndex'] as num).toInt(),
      explanation: json['explanation'] as String?,
    );

Map<String, dynamic> _$$QuizContentImplToJson(_$QuizContentImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'options': instance.options,
      'correctIndex': instance.correctIndex,
      'explanation': instance.explanation,
    };

_$WorkContentImpl _$$WorkContentImplFromJson(Map<String, dynamic> json) =>
    _$WorkContentImpl(
      instruction: json['instruction'] as String,
      initialCode: json['initialCode'] as String,
      expectedOutput: json['expectedOutput'] as String,
      hint: json['hint'] as String?,
      solution: json['solution'] as String?,
    );

Map<String, dynamic> _$$WorkContentImplToJson(_$WorkContentImpl instance) =>
    <String, dynamic>{
      'instruction': instance.instruction,
      'initialCode': instance.initialCode,
      'expectedOutput': instance.expectedOutput,
      'hint': instance.hint,
      'solution': instance.solution,
    };

_$UserProgressImpl _$$UserProgressImplFromJson(Map<String, dynamic> json) =>
    _$UserProgressImpl(
      oderId: json['oderId'] as String,
      lessonId: json['lessonId'] as String,
      stepId: json['stepId'] as String,
      isCompleted: json['isCompleted'] as bool,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      score: (json['score'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserProgressImplToJson(_$UserProgressImpl instance) =>
    <String, dynamic>{
      'oderId': instance.oderId,
      'lessonId': instance.lessonId,
      'stepId': instance.stepId,
      'isCompleted': instance.isCompleted,
      'completedAt': instance.completedAt?.toIso8601String(),
      'score': instance.score,
    };
