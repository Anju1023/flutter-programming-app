// moku アプリ基本テスト

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moku/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // アプリをビルドしてフレームを描画
    await tester.pumpWidget(const ProviderScope(child: MokuApp()));

    // ホーム画面が表示されることを確認
    expect(find.text('moku'), findsOneWidget);
  });
}
