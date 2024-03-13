import 'package:flutter_app/view_model/login_form_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginFormViewModelProvider =
    ChangeNotifierProvider((ref) => LoginFormViewModel());
