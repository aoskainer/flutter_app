import 'package:flutter/material.dart';

class LoginFormViewModel extends ChangeNotifier {
  bool _isObscure = true;

  /// パスワードを表示するかどうか
  bool get isObscure => _isObscure;

  /// パスワードを表示するかどうかを切り替える
  void toggleObscure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }
}
