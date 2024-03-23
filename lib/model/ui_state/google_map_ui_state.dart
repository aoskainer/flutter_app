import 'package:freezed_annotation/freezed_annotation.dart';

part 'google_map_ui_state.freezed.dart';

@freezed
class GoogleMapUiState with _$GoogleMapUiState {
  const factory GoogleMapUiState({
    /// 緯度
    required double latitude,

    /// 経度
    required double longitude,
  }) = _GoogleMapUiState;
}
