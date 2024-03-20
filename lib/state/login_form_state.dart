import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.freezed.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    /// メールアドレス
    required String email,

    /// パスワード
    required String password,

    /// パスワードの表示・非表示
    required bool isPasswordObscure,
  }) = _LoginFormState;
}
