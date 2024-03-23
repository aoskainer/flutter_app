// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_map_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleMapUiState {
  /// 緯度
  double get latitude => throw _privateConstructorUsedError;

  /// 経度
  double get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleMapUiStateCopyWith<GoogleMapUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapUiStateCopyWith<$Res> {
  factory $GoogleMapUiStateCopyWith(
          GoogleMapUiState value, $Res Function(GoogleMapUiState) then) =
      _$GoogleMapUiStateCopyWithImpl<$Res, GoogleMapUiState>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$GoogleMapUiStateCopyWithImpl<$Res, $Val extends GoogleMapUiState>
    implements $GoogleMapUiStateCopyWith<$Res> {
  _$GoogleMapUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoogleMapUiStateImplCopyWith<$Res>
    implements $GoogleMapUiStateCopyWith<$Res> {
  factory _$$GoogleMapUiStateImplCopyWith(_$GoogleMapUiStateImpl value,
          $Res Function(_$GoogleMapUiStateImpl) then) =
      __$$GoogleMapUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$GoogleMapUiStateImplCopyWithImpl<$Res>
    extends _$GoogleMapUiStateCopyWithImpl<$Res, _$GoogleMapUiStateImpl>
    implements _$$GoogleMapUiStateImplCopyWith<$Res> {
  __$$GoogleMapUiStateImplCopyWithImpl(_$GoogleMapUiStateImpl _value,
      $Res Function(_$GoogleMapUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$GoogleMapUiStateImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$GoogleMapUiStateImpl implements _GoogleMapUiState {
  const _$GoogleMapUiStateImpl(
      {required this.latitude, required this.longitude});

  /// 緯度
  @override
  final double latitude;

  /// 経度
  @override
  final double longitude;

  @override
  String toString() {
    return 'GoogleMapUiState(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleMapUiStateImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleMapUiStateImplCopyWith<_$GoogleMapUiStateImpl> get copyWith =>
      __$$GoogleMapUiStateImplCopyWithImpl<_$GoogleMapUiStateImpl>(
          this, _$identity);
}

abstract class _GoogleMapUiState implements GoogleMapUiState {
  const factory _GoogleMapUiState(
      {required final double latitude,
      required final double longitude}) = _$GoogleMapUiStateImpl;

  @override

  /// 緯度
  double get latitude;
  @override

  /// 経度
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$GoogleMapUiStateImplCopyWith<_$GoogleMapUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
