import 'package:flutter/material.dart';
import 'package:flutter_app/view/login_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  group('LoginPage Tests', () {
    testWidgets('アイコンをタップした時にパスワードが秘匿されず表示されること', (WidgetTester tester) async {
      // ProviderScopeでアプリケーションをラップ
      await tester.pumpWidget(
        const ProviderScope(
          child: MaterialApp(
            home: LoginPage(),
          ),
        ),
      );

      // FABをタップ
      await tester.tap(find.byIcon(Icons.visibility_off));
      await tester.pump(); // リストの更新を待つ

      // パスワードが秘匿されていないことを確認
      expect(find.byIcon(Icons.visibility), findsOneWidget);
    });
  });
}
