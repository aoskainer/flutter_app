import 'package:flutter/material.dart';
import 'package:flutter_app/view/counter_page.dart';
import 'package:flutter_app/view_model/counter_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../shared/create_widget_test_provider_scope.dart';

void main() {
  group('CounterPage Tests', () {
    late ProviderScope providerScope;

    setUp(() {
      providerScope = createWidgetTestProviderScope(
        initialLocation: '/counter',
      );
    });

    testWidgets('カウンターのボタンをタップした時に値が増えることを確認する', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(CounterPage));
      final container = ProviderScope.containerOf(element);

      // 初期のカウンター値が0であることを確認
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
      expect(
        container.read(counterViewModelProvider).count,
        equals(0),
      );

      // FABを探してタップする
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // カウンターの値が1に増加したことを確認
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
      expect(
        container.read(counterViewModelProvider).count,
        equals(1),
      );
    });

    testWidgets('リストのボタンをタップした時にカウンターがリセットされることを確認する', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(CounterPage));
      final container = ProviderScope.containerOf(element);

      // 初期のカウンター値が0であることを確認
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
      expect(
        container.read(counterViewModelProvider).count,
        equals(0),
      );

      // FABを探して3回タップする
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // カウンターの値が3に増加したことを確認
      expect(find.text('0'), findsNothing);
      expect(find.text('3'), findsOneWidget);
      expect(
        container.read(counterViewModelProvider).count,
        equals(3),
      );

      // リストボタンを探してタップする
      await tester.tap(find.byIcon(Icons.list_alt));
      await tester.pump();

      // カウンターの値が0にリセットされたことを確認
      expect(
        container.read(counterViewModelProvider).count,
        equals(0),
      );
    });

    testWidgets('ログアウトのボタンをタップした時にカウンターがリセットされることを確認する', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(CounterPage));
      final container = ProviderScope.containerOf(element);

      // 初期のカウンター値が0であることを確認
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
      expect(
        container.read(counterViewModelProvider).count,
        equals(0),
      );

      // FABを探して3回タップする
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // カウンターの値が3に増加したことを確認
      expect(find.text('0'), findsNothing);
      expect(find.text('3'), findsOneWidget);
      expect(
        container.read(counterViewModelProvider).count,
        equals(3),
      );

      // リストボタンを探してタップする
      await tester.tap(find.byIcon(Icons.logout));
      await tester.pump();

      // カウンターの値が0にリセットされたことを確認
      expect(
        container.read(counterViewModelProvider).count,
        equals(0),
      );
    });
  });
}
