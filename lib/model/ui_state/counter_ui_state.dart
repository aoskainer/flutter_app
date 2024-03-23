import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_ui_state.freezed.dart';

@freezed
class CounterUiState with _$CounterUiState {
  const factory CounterUiState({
    /// カウント
    required int count,
  }) = _CounterUiState;
}
