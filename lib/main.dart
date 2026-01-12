import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app.dart';
import 'core/config/supabase_config.dart';

/// moku アプリのエントリーポイント
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Supabase 初期化
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);

  runApp(const ProviderScope(child: MokuApp()));
}
