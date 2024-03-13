import 'package:flutter_app/view_model/login_form_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterViewModel Tests', () {
    test('パスワード表示設定の初期値はtrue(非表示)であること', () {
      final loginFormViewModel = LoginFormViewModel();
      expect(loginFormViewModel.isObscure, true);
    });

    test('toggleObscure - 正しく表示・非表示を切り替えられて、リスナーが変更をキャッチしていること', () {
      final loginFormViewModel = LoginFormViewModel();
      bool isNotified = false;

      loginFormViewModel.addListener(() {
        isNotified = true;
      });

      loginFormViewModel.toggleObscure();

      expect(loginFormViewModel.isObscure, false);
      expect(isNotified, true);
    });
  });
}
