import 'package:flutter_app/view_model/login_form_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../shared/create_provider_container.dart';

void main() {
  group('CounterViewModel Tests', () {
    test('stateの初期値はメールアドレス、パスワードが空文字、パスワードが非表示の状態であること', () {
      final container = createProviderContainer();
      final loginFormViewModel = container.read(loginFormViewModelProvider);
      expect(
        loginFormViewModel.email,
        equals(''),
      );
      expect(
        loginFormViewModel.password,
        equals(''),
      );
      expect(
        loginFormViewModel.isPasswordObscure,
        equals(true),
      );
    });

    test('updateEmail - 正しくメールアドレスが更新されていること', () {
      final container = createProviderContainer();
      container
          .read(loginFormViewModelProvider.notifier)
          .updateEmail('test@example.com');
      expect(
        container.read(loginFormViewModelProvider).email,
        equals('test@example.com'),
      );
    });

    test('updatePassword - 正しくパスワードが更新されていること', () {
      final container = createProviderContainer();
      container
          .read(loginFormViewModelProvider.notifier)
          .updatePassword('A3rYW=+J');
      expect(
        container.read(loginFormViewModelProvider).password,
        equals('A3rYW=+J'),
      );
    });

    test('togglePasswordObscure - 正しく表示・非表示を切り替えられること', () {
      final container = createProviderContainer();
      container
          .read(loginFormViewModelProvider.notifier)
          .togglePasswordObscure();
      expect(
        container.read(loginFormViewModelProvider).isPasswordObscure,
        equals(false),
      );
    });

    test('reset - 正しくstateが初期状態にリセットされていること', () {
      final container = createProviderContainer();

      // stateの全ての値を全部更新しておく。
      container
          .read(loginFormViewModelProvider.notifier)
          .updateEmail('test@example.com');
      container
          .read(loginFormViewModelProvider.notifier)
          .updatePassword('A3rYW=+J');
      container
          .read(loginFormViewModelProvider.notifier)
          .togglePasswordObscure();

      // リセットする。stateが初期状態に戻るはず。
      container.read(loginFormViewModelProvider.notifier).reset();

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
