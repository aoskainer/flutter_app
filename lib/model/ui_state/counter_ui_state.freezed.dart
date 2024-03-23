// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CounterUiState {
  /// カウント
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CounterUiStateCopyWith<CounterUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterUiStateCopyWith<$Res> {
  factory $CounterUiStateCopyWith(
          CounterUiState value, $Res Function(CounterUiState) then) =
      _$CounterUiStateCopyWithImpl<$Res, CounterUiState>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$CounterUiStateCopyWithImpl<$Res, $Val extends CounterUiState>
    implements $CounterUiStateCopyWith<$Res> {
  _$CounterUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CounterUiStateImplCopyWith<$Res>
    implements $CounterUiStateCopyWith<$Res> {
  factory _$$CounterUiStateImplCopyWith(_$CounterUiStateImpl value,
          $Res Function(_$CounterUiStateImpl) then) =
      __$$CounterUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$CounterUiStateImplCopyWithImpl<$Res>
    extends _$CounterUiStateCopyWithImpl<$Res, _$CounterUiStateImpl>
    implements _$$CounterUiStateImplCopyWith<$Res> {
  __$$CounterUiStateImplCopyWithImpl(
      _$CounterUiStateImpl _value, $Res Function(_$CounterUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$CounterUiStateImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CounterUiStateImpl implements _CounterUiState {
  const _$CounterUiStateImpl({required this.count});

  /// カウント
  @override
  final int count;

  @override
  String toString() {
    return 'CounterUiState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CounterUiStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CounterUiStateImplCopyWith<_$CounterUiStateImpl> get copyWith =>
      __$$CounterUiStateImplCopyWithImpl<_$CounterUiStateImpl>(
          this, _$identity);
}

abstract class _CounterUiState implements CounterUiState {
  const factory _CounterUiState({required final int count}) =
      _$CounterUiStateImpl;

  @override

  /// カウント
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$CounterUiStateImplCopyWith<_$CounterUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
