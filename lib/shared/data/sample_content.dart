import '../models/content_models.dart';

/// サンプル学習コンテンツ
/// Python 基礎コースのサンプルデータ
class SampleContent {
  SampleContent._();

  /// Python 基礎コース
  static Course get pythonBasics => Course(
    id: 'python-basics',
    title: 'Python のはじめかた',
    description: 'プログラミングの世界へようこそ。やさしく、ゆっくり。',
    iconName: 'code',
    order: 1,
    units: [unit1, unit2],
  );

  // ========== Unit 1 ==========

  static Unit get unit1 => Unit(
    id: 'unit-1',
    courseId: 'python-basics',
    title: 'はじめの一歩',
    order: 1,
    lessons: [lesson1_1, lesson1_2, lesson1_3],
  );

  static Lesson get lesson1_1 => const Lesson(
    id: 'lesson-1-1',
    unitId: 'unit-1',
    title: 'プログラミングってなんだろう？',
    description: 'コンピュータと会話する方法を知ろう',
    order: 1,
    estimatedMinutes: 3,
    steps: [
      LessonStep(
        id: 'step-1-1-1',
        lessonId: 'lesson-1-1',
        order: 1,
        type: LessonStepType.story,
        content: {
          'title': 'プログラミングとの出会い',
          'body': '''コーヒーを淹れて、深呼吸。

今日からあなたは、コンピュータと「会話」する方法を学びます。

難しそう？大丈夫。
最初は誰でも初心者。

ゆっくり、一歩ずつ。''',
        },
      ),
      LessonStep(
        id: 'step-1-1-2',
        lessonId: 'lesson-1-1',
        order: 2,
        type: LessonStepType.guide,
        content: {
          'title': 'プログラムってなに？',
          'slides': [
            {
              'text':
                  'プログラムは、コンピュータへの「お願い」。\n\n「これをして」「あれを表示して」\nそんな指示を書いていきます。',
            },
            {
              'text':
                  '人間の言葉をコンピュータに伝えるために、\n「プログラミング言語」を使います。\n\n今回学ぶのは Python（パイソン）。\n世界中で人気の言語だよ。',
            },
          ],
        },
      ),
      LessonStep(
        id: 'step-1-1-3',
        lessonId: 'lesson-1-1',
        order: 3,
        type: LessonStepType.quiz,
        content: {
          'question': 'プログラミング言語は何のためにある？',
          'options': ['コンピュータに指示を伝えるため', '外国の人と話すため', '計算機を直すため'],
          'correctIndex': 0,
          'explanation': 'プログラミング言語は、私たちの「お願い」をコンピュータに伝えるためのものだよ。',
        },
      ),
    ],
  );

  static Lesson get lesson1_2 => const Lesson(
    id: 'lesson-1-2',
    unitId: 'unit-1',
    title: '文字を表示してみよう',
    description: 'print() で画面に文字を出してみよう',
    order: 2,
    estimatedMinutes: 5,
    steps: [
      LessonStep(
        id: 'step-1-2-1',
        lessonId: 'lesson-1-2',
        order: 1,
        type: LessonStepType.story,
        content: {
          'title': 'はじめての魔法',
          'body': '''プログラミングの世界では、
「Hello, World!」と表示することから始まります。

これは昔からの伝統。
あなたも今日、その一歩を。''',
        },
      ),
      LessonStep(
        id: 'step-1-2-2',
        lessonId: 'lesson-1-2',
        order: 2,
        type: LessonStepType.guide,
        content: {
          'title': 'print() 関数',
          'slides': [
            {'text': '画面に文字を表示するには print() を使います。', 'code': 'print("こんにちは")'},
            {
              'text': '文字は「ダブルクォート」で囲みます。\nこれを「文字列」と呼ぶよ。',
              'code': 'print("好きな文字を入れてね")',
            },
          ],
        },
      ),
      LessonStep(
        id: 'step-1-2-3',
        lessonId: 'lesson-1-2',
        order: 3,
        type: LessonStepType.work,
        content: {
          'instruction': '画面に「こんにちは」と表示してみよう',
          'initialCode': 'print()',
          'expectedOutput': 'こんにちは',
          'hint': 'print() のカッコの中に "こんにちは" と書いてね',
          'solution': 'print("こんにちは")',
        },
      ),
      LessonStep(
        id: 'step-1-2-4',
        lessonId: 'lesson-1-2',
        order: 4,
        type: LessonStepType.quiz,
        content: {
          'question': '文字を表示するときに使う記号は？',
          'options': ['ダブルクォート "', 'カッコ ()', 'アスタリスク *'],
          'correctIndex': 0,
        },
      ),
    ],
  );

  static Lesson get lesson1_3 => const Lesson(
    id: 'lesson-1-3',
    unitId: 'unit-1',
    title: '変数ってなんだろう？',
    description: 'データを入れておく「箱」について学ぼう',
    order: 3,
    estimatedMinutes: 5,
    steps: [
      LessonStep(
        id: 'step-1-3-1',
        lessonId: 'lesson-1-3',
        order: 1,
        type: LessonStepType.story,
        content: {
          'title': '名前をつける',
          'body': '''日常生活でも、私たちは「名前」をつけます。

お気に入りのマグカップ。
大切なノート。

プログラミングでも同じ。
データに名前をつけて、大切に保管します。''',
        },
      ),
      LessonStep(
        id: 'step-1-3-2',
        lessonId: 'lesson-1-3',
        order: 2,
        type: LessonStepType.guide,
        content: {
          'title': '変数という箱',
          'slides': [
            {
              'text': '変数は、データを入れておく「箱」。\n名前をつけて、いつでも取り出せます。',
              'code': 'name = "あんじゅ"',
            },
            {'text': '中身を取り出すときは、名前を呼ぶだけ。', 'code': 'print(name)'},
          ],
        },
      ),
      LessonStep(
        id: 'step-1-3-3',
        lessonId: 'lesson-1-3',
        order: 3,
        type: LessonStepType.work,
        content: {
          'instruction': '変数 greeting に「おはよう」を入れて、print() で表示しよう',
          'initialCode': 'greeting = \nprint(greeting)',
          'expectedOutput': 'おはよう',
          'hint': '= の後に "おはよう" と書いてね',
          'solution': 'greeting = "おはよう"\nprint(greeting)',
        },
      ),
    ],
  );

  // ========== Unit 2 ==========

  static Unit get unit2 => Unit(
    id: 'unit-2',
    courseId: 'python-basics',
    title: '計算してみよう',
    order: 2,
    lessons: [lesson2_1],
  );

  static Lesson get lesson2_1 => const Lesson(
    id: 'lesson-2-1',
    unitId: 'unit-2',
    title: '足し算と引き算',
    description: 'Python で計算をしてみよう',
    order: 1,
    estimatedMinutes: 4,
    steps: [
      LessonStep(
        id: 'step-2-1-1',
        lessonId: 'lesson-2-1',
        order: 1,
        type: LessonStepType.guide,
        content: {
          'title': '演算子',
          'slides': [
            {
              'text': 'Python は計算もお手のもの。\n+ で足し算、- で引き算ができます。',
              'code': 'print(3 + 5)',
            },
            {'text': '変数を使って計算もできるよ。', 'code': 'a = 10\nb = 3\nprint(a + b)'},
          ],
        },
      ),
      LessonStep(
        id: 'step-2-1-2',
        lessonId: 'lesson-2-1',
        order: 2,
        type: LessonStepType.work,
        content: {
          'instruction': '7 + 8 の結果を表示しよう',
          'initialCode': 'print()',
          'expectedOutput': '15',
          'hint': 'print() のカッコの中に 7 + 8 と書いてね',
          'solution': 'print(7 + 8)',
        },
      ),
    ],
  );

  /// 全コースを取得
  static List<Course> get allCourses => [pythonBasics];
}
