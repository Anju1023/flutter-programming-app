import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_models.freezed.dart';
part 'content_models.g.dart';

/// コース（Python基礎など）
@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String title,
    required String description,
    required String iconName,
    required int order,
    @Default([]) List<Unit> units,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

/// ユニット（チャプターのグループ）
@freezed
class Unit with _$Unit {
  const factory Unit({
    required String id,
    required String courseId,
    required String title,
    required int order,
    @Default([]) List<Lesson> lessons,
  }) = _Unit;

  factory Unit.fromJson(Map<String, dynamic> json) => _$UnitFromJson(json);
}

/// レッスン（1つの学習単位）
@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String id,
    required String unitId,
    required String title,
    required String description,
    required int order,
    required int estimatedMinutes,
    @Default([]) List<LessonStep> steps,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);
}

/// レッスンのステップ（ストーリー/ガイド/クイズ/ワーク）
@freezed
class LessonStep with _$LessonStep {
  const factory LessonStep({
    required String id,
    required String lessonId,
    required int order,
    required LessonStepType type,
    required Map<String, dynamic> content,
  }) = _LessonStep;

  factory LessonStep.fromJson(Map<String, dynamic> json) =>
      _$LessonStepFromJson(json);
}

/// ステップタイプ
enum LessonStepType {
  /// ストーリー - 導入テキスト
  story,

  /// ガイド - ビジュアル解説
  guide,

  /// クイズ - 選択問題
  quiz,

  /// ワーク - コーディング演習
  work,
}

/// ストーリーコンテンツ
@freezed
class StoryContent with _$StoryContent {
  const factory StoryContent({
    required String title,
    required String body,
    String? imageUrl,
  }) = _StoryContent;

  factory StoryContent.fromJson(Map<String, dynamic> json) =>
      _$StoryContentFromJson(json);
}

/// ガイドコンテンツ
@freezed
class GuideContent with _$GuideContent {
  const factory GuideContent({
    required String title,
    required List<GuideSlide> slides,
  }) = _GuideContent;

  factory GuideContent.fromJson(Map<String, dynamic> json) =>
      _$GuideContentFromJson(json);
}

/// ガイドスライド
@freezed
class GuideSlide with _$GuideSlide {
  const factory GuideSlide({
    required String text,
    String? code,
    String? imageUrl,
  }) = _GuideSlide;

  factory GuideSlide.fromJson(Map<String, dynamic> json) =>
      _$GuideSlideFromJson(json);
}

/// クイズコンテンツ
@freezed
class QuizContent with _$QuizContent {
  const factory QuizContent({
    required String question,
    required List<String> options,
    required int correctIndex,
    String? explanation,
  }) = _QuizContent;

  factory QuizContent.fromJson(Map<String, dynamic> json) =>
      _$QuizContentFromJson(json);
}

/// ワークコンテンツ（コーディング演習）
@freezed
class WorkContent with _$WorkContent {
  const factory WorkContent({
    required String instruction,
    required String initialCode,
    required String expectedOutput,
    String? hint,
    String? solution,
  }) = _WorkContent;

  factory WorkContent.fromJson(Map<String, dynamic> json) =>
      _$WorkContentFromJson(json);
}

/// ユーザーの進捗
@freezed
class UserProgress with _$UserProgress {
  const factory UserProgress({
    required String oderId,
    required String lessonId,
    required String stepId,
    required bool isCompleted,
    DateTime? completedAt,
    int? score,
  }) = _UserProgress;

  factory UserProgress.fromJson(Map<String, dynamic> json) =>
      _$UserProgressFromJson(json);
}
