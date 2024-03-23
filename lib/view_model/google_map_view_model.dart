import 'package:flutter_app/constant/location.dart';
import 'package:flutter_app/model/ui_state/google_map_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'google_map_view_model.g.dart';

@riverpod
class GoogleMapViewModel extends _$GoogleMapViewModel {
  final _initialLatitude = Location.tokyoStation.latitude;
  final _initialLongitude = Location.tokyoStation.longitude;

  @override
  GoogleMapUiState build() {
    return GoogleMapUiState(
      latitude: _initialLatitude,
      longitude: _initialLongitude,
    );
  }

  void updateLocationToOsaka() {
    state = state.copyWith(
      latitude: Location.shinOsakaStation.latitude,
      longitude: Location.shinOsakaStation.longitude,
    );
  }

  void updateLocationToFukuoka() {
    state = state.copyWith(
      latitude: Location.hakataStation.latitude,
      longitude: Location.hakataStation.longitude,
    );
  }

  void reset() {
    state = state.copyWith(
      latitude: _initialLatitude,
      longitude: _initialLongitude,
    );
  }
}
