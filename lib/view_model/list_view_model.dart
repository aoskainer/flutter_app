import 'package:flutter_app/state/list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'list_view_model.g.dart';

@riverpod
class ListViewModel extends _$ListViewModel {
  @override
  ListState build() {
    return const ListState(
      items: ['Amazon', 'Google', 'Facebook'],
    );
  }

  /// リストに項目を追加する
  void addToList(String value) {
    state = state.copyWith(items: [...state.items, value]);
  }
}
