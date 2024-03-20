import 'package:flutter_app/view_model/counter_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../shared/create_provider_container.dart';

void main() {
  group('CounterViewModel Tests', () {
    test('カウンターの初期値は0であること', () {
      final container = createProviderContainer();
      expect(
        container.read(counterViewModelProvider).count,
        equals(0),
      );
    });

    test('increment - 正しく数値が加算されること', () {
      final container = createProviderContainer();
      container.read(counterViewModelProvider.notifier).increment();
      expect(
        container.read(counterViewModelProvider).count,
        equals(1),
      );
    });

    test('decrement - 正しく数値が減算されること', () {
      final container = createProviderContainer();
      container.read(counterViewModelProvider.notifier).decrement();
      expect(
        container.read(counterViewModelProvider).count,
        equals(-1),
      );
    });
  });
}
