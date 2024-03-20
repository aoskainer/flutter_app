import 'package:flutter/material.dart';
import 'package:flutter_app/view/login_page.dart';
import 'package:flutter_app/view_model/login_form_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../shared/create_widget_test_provider_scope.dart';

void main() {
  group('LoginPage Tests', () {
    late ProviderScope providerScope;

    setUp(() {
      providerScope = createWidgetTestProviderScope(
        initialLocation: '/login',
      );
    });

    testWidgets('初期状態でメールアドレス、パスワードが何も入力されておらず、パスワードも非表示であること', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(LoginPage));
      final container = ProviderScope.containerOf(element);

      // stateの初期値を確認
      expect(
        container.read(loginFormViewModelProvider).email,
        equals(''),
      );
      expect(
        container.read(loginFormViewModelProvider).password,
        equals(''),
      );
      expect(
        container.read(loginFormViewModelProvider).isPasswordObscure,
        equals(true),
      );
    });

    testWidgets('メールアドレスを入力した時にstateが更新されること', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(LoginPage));
      final container = ProviderScope.containerOf(element);

      // メールアドレスを入力する
      await tester.enterText(
        find.byKey(const Key('data-testid-LoginPage-email')),
        'test@example.com',
      );
      await tester.pump();

      // stateが更新されていることを確認
      expect(
        container.read(loginFormViewModelProvider).email,
        equals('test@example.com'),
      );
    });

    testWidgets('パスワードを入力した時にstateが更新されること', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(LoginPage));
      final container = ProviderScope.containerOf(element);

      // パスワードを入力する
      await tester.enterText(
        find.byKey(const Key('data-testid-LoginPage-password')),
        'A3rYW=+J',
      );
      await tester.pump();

      // stateが更新されていることを確認
      expect(
        container.read(loginFormViewModelProvider).password,
        equals('A3rYW=+J'),
      );
    });

    testWidgets('パスワード表示・非表示のアイコンをタップした時にパスワード表示設定が切り替わること', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(LoginPage));
      final container = ProviderScope.containerOf(element);

      // パスワードを非表示から表示に切り替える
      await tester.tap(find.byIcon(Icons.visibility_off));
      await tester.pump();

      // パスワードが秘匿されていないことを確認
      expect(find.byIcon(Icons.visibility), findsOneWidget);
      expect(find.byIcon(Icons.visibility_off), findsNothing);
      expect(
        container.read(loginFormViewModelProvider).isPasswordObscure,
        equals(false),
      );

      // パスワードを表示から非表示に切り替える
      await tester.tap(find.byIcon(Icons.visibility));
      await tester.pump();

      // パスワードが秘匿されていることを確認
      expect(find.byIcon(Icons.visibility_off), findsOneWidget);
      expect(find.byIcon(Icons.visibility), findsNothing);
      expect(
        container.read(loginFormViewModelProvider).isPasswordObscure,
        equals(true),
      );
    });

    testWidgets('ログインボタンをタップした時にstateの値がリセットされること', (tester) async {
      await tester.pumpWidget(providerScope);
      await tester.pumpAndSettle();

      final element = tester.element(find.byType(LoginPage));
      final container = ProviderScope.containerOf(element);

      // メールアドレス、パスワードを入力する
      await tester.enterText(
        find.byKey(const Key('data-testid-LoginPage-email')),
        'test@example.com',
      );
      await tester.pump();
      await tester.enterText(
        find.byKey(const Key('data-testid-LoginPage-password')),
        'A3rYW=+J',
      );
      await tester.pump();

      // ログインボタンをタップする
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // stateがリセットされていることを確認
      expect(
        container.read(loginFormViewModelProvider).email,
        equals(''),
      );
      expect(
        container.read(loginFormViewModelProvider).password,
        equals(''),
      );
      expect(
        container.read(loginFormViewModelProvider).isPasswordObscure,
        equals(true),
      );
    });
  });
}
