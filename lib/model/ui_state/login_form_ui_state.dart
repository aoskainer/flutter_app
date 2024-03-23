import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_ui_state.freezed.dart';

@freezed
class LoginFormUiState with _$LoginFormUiState {
  const factory LoginFormUiState({
    /// メールアドレス
    required String email,

    /// パスワード
    required String password,

    /// パスワードの表示・非表示
    required bool isPasswordObscure,
  }) = _LoginFormUiState;
}
