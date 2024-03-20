import 'package:flutter_app/state/list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_view_model.g.dart';

@riverpod
class ListViewModel extends _$ListViewModel {
  final _initialItems = ['Amazon', 'Google', 'Facebook'];

  @override
  ListState build() {
    return ListState(
      items: _initialItems,
    );
  }

  /// リストに項目を追加する
  void addItem(String value) {
    state = state.copyWith(items: [...state.items, value]);
  }

  /// リストをリセットする
  void reset() {
    state = state.copyWith(items: _initialItems);
  }
}
