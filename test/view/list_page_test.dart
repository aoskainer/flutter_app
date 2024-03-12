import 'package:flutter/material.dart';
import 'package:flutter_app/view/list_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  group('ListPage Tests', () {
    testWidgets('初期状態の画面描画が適切に行われることを確認する', (WidgetTester tester) async {
      // ProviderScopeでアプリケーションをラップ
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: ListPage(title: 'List Test'),
          ),
        ),
      );

      // ListViewが存在するか確認
      expect(find.byType(ListView), findsOneWidget);
      // 初期状態でリストアイテムが表示されているか確認（仮にリストが空の場合はこの部分を調整）
    });

    testWidgets('ボタンをタップした時にリストにアイテムが追加されることを確認する',
        (WidgetTester tester) async {
      // ProviderScopeでアプリケーションをラップ
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: ListPage(title: 'List Test'),
          ),
        ),
      );

      // FABをタップ
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump(); // リストの更新を待つ

      // 'Apple'がリストに追加されたことを確認
      expect(find.text('Apple'), findsOneWidget);
    });
  });
}
