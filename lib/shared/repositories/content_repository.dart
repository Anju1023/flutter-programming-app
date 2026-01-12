import '../models/content_models.dart';
import '../data/sample_content.dart';

/// 学習コンテンツリポジトリ
/// コンテンツの取得と管理を行う
class ContentRepository {
  ContentRepository._();

  static final ContentRepository instance = ContentRepository._();

  // ========== コース ==========

  /// 全コースを取得
  Future<List<Course>> getAllCourses() async {
    // TODO: Supabase からデータを取得するように変更
    // 現在はサンプルデータを返す
    await Future.delayed(const Duration(milliseconds: 300));
    return SampleContent.allCourses;
  }

  /// コースIDでコースを取得
  Future<Course?> getCourseById(String courseId) async {
    final courses = await getAllCourses();
    try {
      return courses.firstWhere((c) => c.id == courseId);
    } catch (_) {
      return null;
    }
  }

  // ========== ユニット ==========

  /// コースIDでユニット一覧を取得
  Future<List<Unit>> getUnitsByCourseId(String courseId) async {
    final course = await getCourseById(courseId);
    return course?.units ?? [];
  }

  // ========== レッスン ==========

  /// ユニットIDでレッスン一覧を取得
  Future<List<Lesson>> getLessonsByUnitId(String unitId) async {
    final courses = await getAllCourses();
    for (final course in courses) {
      for (final unit in course.units) {
        if (unit.id == unitId) {
          return unit.lessons;
        }
      }
    }
    return [];
  }

  /// レッスンIDでレッスンを取得
  Future<Lesson?> getLessonById(String lessonId) async {
    final courses = await getAllCourses();
    for (final course in courses) {
      for (final unit in course.units) {
        for (final lesson in unit.lessons) {
          if (lesson.id == lessonId) {
            return lesson;
          }
        }
      }
    }
    return null;
  }

  // ========== ステップ ==========

  /// レッスンIDでステップ一覧を取得
  Future<List<LessonStep>> getStepsByLessonId(String lessonId) async {
    final lesson = await getLessonById(lessonId);
    return lesson?.steps ?? [];
  }
}
