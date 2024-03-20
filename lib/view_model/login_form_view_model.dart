import 'package:flutter_app/state/login_form_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_form_view_model.g.dart';

@riverpod
class LoginFormViewModel extends _$LoginFormViewModel {
  final _initialEmail = '';
  final _initialPassword = '';
  final _initialIsPasswordObscure = true;

  @override
  LoginFormState build() {
    return LoginFormState(
      email: _initialEmail,
      password: _initialPassword,
      isPasswordObscure: _initialIsPasswordObscure,
    );
  }

  /// 入力されたメールアドレスでstateを更新する
  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  /// 入力されたパスワードでstateを更新する
  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  /// パスワードを表示するかどうかを切り替える
  void togglePasswordObscure() {
    state = state.copyWith(isPasswordObscure: !state.isPasswordObscure);
  }

  /// フォームの内容をリセットする
  void reset() {
    state = state.copyWith(
      email: _initialEmail,
      password: _initialPassword,
      isPasswordObscure: _initialIsPasswordObscure,
    );
  }
}
