import 'package:flutter/material.dart';
import 'package:flutter_app/view/list_page.dart';
import 'package:flutter_app/view_model/list_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/create_widget_test_provider_scope.dart';

void main() {
  group('ListPage Tests', () {
    late ProviderScope providerScope;

    setUp(() {
      providerScope = createWidgetTestProviderScope(
        initialLocation: '/list',
      );
    });

    testWidgets('初期状態で3つのStringが存在している', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(ListPage));
      final container = ProviderScope.containerOf(element);

      // リストに3つのアイテムが存在していることを確認する
      expect(find.text('Amazon'), findsOneWidget);
      expect(find.text('Google'), findsOneWidget);
      expect(find.text('Facebook'), findsOneWidget);
      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook']),
      );
    });

    testWidgets('追加ボタンをタップした時にリストにアイテムが追加される', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(ListPage));
      final container = ProviderScope.containerOf(element);

      // FABを探してタップする
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // リストにアイテムが追加されていることを確認する
      expect(find.text('Amazon'), findsOneWidget);
      expect(find.text('Google'), findsOneWidget);
      expect(find.text('Facebook'), findsOneWidget);
      expect(find.text('Apple'), findsOneWidget);
      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook', 'Apple']),
      );
    });

    testWidgets('ログアウトアイコンをタップした時にリストが初期状態に戻る', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(ListPage));
      final container = ProviderScope.containerOf(element);

      // FABを探して複数回タップする
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // リストが増えていることを確認する
      expect(find.text('Amazon'), findsOneWidget);
      expect(find.text('Google'), findsOneWidget);
      expect(find.text('Facebook'), findsOneWidget);
      expect(find.text('Apple'), findsExactly(2));
      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook', 'Apple', 'Apple']),
      );

      // ログアウトボタンを探してタップする
      await tester.tap(find.byIcon(Icons.logout));
      await tester.pump();

      // ページ遷移後にリストが初期状態に戻っていることを確認する
      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook']),
      );
    });
  });
}
