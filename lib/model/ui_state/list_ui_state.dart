import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_ui_state.freezed.dart';

@freezed
class ListUiState with _$ListUiState {
  const factory ListUiState({
    required List<String> items,
  }) = _ListUiState;
}
