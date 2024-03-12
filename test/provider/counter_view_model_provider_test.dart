import 'package:flutter_app/provider/counter_view_model_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_app/view_model/counter_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterViewModelProvider Tests', () {
    test('ProviderContainerからCounterViewModelのインスタンスを取得できることを確認する', () {
      final container = ProviderContainer();
      final instance = container.read(counterViewModelProvider);
      expect(instance, isA<CounterViewModel>());
    });
  });
}
