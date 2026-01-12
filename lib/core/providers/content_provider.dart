import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../shared/models/content_models.dart';
import '../../shared/repositories/content_repository.dart';

/// コンテンツリポジトリプロバイダー
final contentRepositoryProvider = Provider<ContentRepository>((ref) {
  return ContentRepository.instance;
});

/// 全コースプロバイダー
final allCoursesProvider = FutureProvider<List<Course>>((ref) async {
  final repository = ref.watch(contentRepositoryProvider);
  return repository.getAllCourses();
});

/// コースプロバイダー（IDで取得）
final courseProvider = FutureProvider.family<Course?, String>((
  ref,
  courseId,
) async {
  final repository = ref.watch(contentRepositoryProvider);
  return repository.getCourseById(courseId);
});

/// ユニットプロバイダー（コースIDで取得）
final unitsByCourseProvider = FutureProvider.family<List<Unit>, String>((
  ref,
  courseId,
) async {
  final repository = ref.watch(contentRepositoryProvider);
  return repository.getUnitsByCourseId(courseId);
});

/// レッスンプロバイダー（ユニットIDで取得）
final lessonsByUnitProvider = FutureProvider.family<List<Lesson>, String>((
  ref,
  unitId,
) async {
  final repository = ref.watch(contentRepositoryProvider);
  return repository.getLessonsByUnitId(unitId);
});

/// レッスンプロバイダー（IDで取得）
final lessonProvider = FutureProvider.family<Lesson?, String>((
  ref,
  lessonId,
) async {
  final repository = ref.watch(contentRepositoryProvider);
  return repository.getLessonById(lessonId);
});

/// ステッププロバイダー（レッスンIDで取得）
final stepsByLessonProvider = FutureProvider.family<List<LessonStep>, String>((
  ref,
  lessonId,
) async {
  final repository = ref.watch(contentRepositoryProvider);
  return repository.getStepsByLessonId(lessonId);
});
