import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';

/// moku アプリのルートウィジェット
class MokuApp extends StatelessWidget {
  const MokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'moku',
      debugShowCheckedModeBanner: false,

      // テーマ設定
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.light,

      // ルーティング
      routerConfig: appRouter,
    );
  }
}
