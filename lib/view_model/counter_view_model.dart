import 'package:flutter_app/state/counter_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_view_model.g.dart';

@riverpod
class CounterViewModel extends _$CounterViewModel {
  @override
  CounterState build() {
    return const CounterState(
      count: 0,
    );
  }

  /// カウントを増やす
  void increment() {
    state = state.copyWith(count: state.count + 1);
  }

  /// カウントを減らす
  void decrement() {
    state = state.copyWith(count: state.count - 1);
  }
}
