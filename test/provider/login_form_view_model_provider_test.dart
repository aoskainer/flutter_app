import 'package:flutter_app/provider/login_form_view_model_provider.dart';
import 'package:flutter_app/view_model/login_form_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginFormViewModelProvider Tests', () {
    test('ProviderContainerからLoginFormViewModelのインスタンスを取得できることを確認する', () {
      final container = ProviderContainer();
      final instance = container.read(loginFormViewModelProvider);
      expect(instance, isA<LoginFormViewModel>());
    });
  });
}
