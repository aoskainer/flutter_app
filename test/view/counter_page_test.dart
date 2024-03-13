import 'package:flutter/material.dart';
import 'package:flutter_app/view/counter_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterPage Tests', () {
    testWidgets('カウンターのボタンをタップした時に値が増えることを確認する', (WidgetTester tester) async {
      // ProviderScopeでアプリケーションをラップして状態管理を有効にする
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: CounterPage(),
          ),
        ),
      );

      // 初期のカウンター値が0であることを確認
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // FABを探してタップする
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // カウンターの値が1に増加したことを確認
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });
}
