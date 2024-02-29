import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // アプリをビルドし、テスト用のウィジェットツリーに追加します。
    await tester
        .pumpWidget(const ProviderScope(child: MyApp(title: 'Flutter Demo')));

    // カウンターの初期値が0であることを確認します。
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // FloatingActionButtonを見つけてタップします。
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // カウンターが1にインクリメントされたことを確認します。
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
