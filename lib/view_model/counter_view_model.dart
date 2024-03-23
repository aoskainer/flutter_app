import 'package:flutter_app/model/ui_state/counter_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_view_model.g.dart';

@riverpod
class CounterViewModel extends _$CounterViewModel {
  final _initialCount = 0;

  @override
  CounterUiState build() {
    return CounterUiState(
      count: _initialCount,
    );
  }

  /// カウントを増やす
  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  /// カウントを減らす
  void decrement() {
    if (state.count > 0) {
      state = state.copyWith(count: state.count - 1);
    }
  }

  /// カウントをリセットする
  void reset() {
    state = state.copyWith(count: _initialCount);
  }
}
