// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginFormUiState {
  /// メールアドレス
  String get email => throw _privateConstructorUsedError;

  /// パスワード
  String get password => throw _privateConstructorUsedError;

  /// パスワードの表示・非表示
  bool get isPasswordObscure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormUiStateCopyWith<LoginFormUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormUiStateCopyWith<$Res> {
  factory $LoginFormUiStateCopyWith(
          LoginFormUiState value, $Res Function(LoginFormUiState) then) =
      _$LoginFormUiStateCopyWithImpl<$Res, LoginFormUiState>;
  @useResult
  $Res call({String email, String password, bool isPasswordObscure});
}

/// @nodoc
class _$LoginFormUiStateCopyWithImpl<$Res, $Val extends LoginFormUiState>
    implements $LoginFormUiStateCopyWith<$Res> {
  _$LoginFormUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isPasswordObscure = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginFormUiStateImplCopyWith<$Res>
    implements $LoginFormUiStateCopyWith<$Res> {
  factory _$$LoginFormUiStateImplCopyWith(_$LoginFormUiStateImpl value,
          $Res Function(_$LoginFormUiStateImpl) then) =
      __$$LoginFormUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, bool isPasswordObscure});
}

/// @nodoc
class __$$LoginFormUiStateImplCopyWithImpl<$Res>
    extends _$LoginFormUiStateCopyWithImpl<$Res, _$LoginFormUiStateImpl>
    implements _$$LoginFormUiStateImplCopyWith<$Res> {
  __$$LoginFormUiStateImplCopyWithImpl(_$LoginFormUiStateImpl _value,
      $Res Function(_$LoginFormUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isPasswordObscure = null,
  }) {
    return _then(_$LoginFormUiStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginFormUiStateImpl implements _LoginFormUiState {
  const _$LoginFormUiStateImpl(
      {required this.email,
      required this.password,
      required this.isPasswordObscure});

  /// メールアドレス
  @override
  final String email;

  /// パスワード
  @override
  final String password;

  /// パスワードの表示・非表示
  @override
  final bool isPasswordObscure;

  @override
  String toString() {
    return 'LoginFormUiState(email: $email, password: $password, isPasswordObscure: $isPasswordObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginFormUiStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                other.isPasswordObscure == isPasswordObscure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, isPasswordObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginFormUiStateImplCopyWith<_$LoginFormUiStateImpl> get copyWith =>
      __$$LoginFormUiStateImplCopyWithImpl<_$LoginFormUiStateImpl>(
          this, _$identity);
}

abstract class _LoginFormUiState implements LoginFormUiState {
  const factory _LoginFormUiState(
      {required final String email,
      required final String password,
      required final bool isPasswordObscure}) = _$LoginFormUiStateImpl;

  @override

  /// メールアドレス
  String get email;
  @override

  /// パスワード
  String get password;
  @override

  /// パスワードの表示・非表示
  bool get isPasswordObscure;
  @override
  @JsonKey(ignore: true)
  _$$LoginFormUiStateImplCopyWith<_$LoginFormUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
