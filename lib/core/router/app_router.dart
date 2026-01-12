import 'package:go_router/go_router.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/lesson/presentation/screens/lesson_screen.dart';
import '../../features/atelier/presentation/screens/atelier_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../widgets/shell/main_shell.dart';

/// moku ルーター設定
final appRouter = GoRouter(
  initialLocation: '/home',
  debugLogDiagnostics: true,

  routes: [
    // メインシェル（ボトムナビゲーション付き）
    ShellRoute(
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        // ホーム画面
        GoRoute(
          path: '/home',
          name: 'home',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: HomeScreen()),
        ),

        // レッスン画面
        GoRoute(
          path: '/lesson',
          name: 'lesson',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: LessonScreen()),
        ),

        // アトリエ画面
        GoRoute(
          path: '/atelier',
          name: 'atelier',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: AtelierScreen()),
        ),

        // マイページ画面
        GoRoute(
          path: '/profile',
          name: 'profile',
          pageBuilder: (context, state) =>
              const NoTransitionPage(child: ProfileScreen()),
        ),
      ],
    ),
  ],
);
