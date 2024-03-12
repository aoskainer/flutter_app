import 'package:flutter_app/view_model/counter_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterViewModel Tests', () {
    test('カウンターの初期値は0であること', () {
      final counterViewModel = CounterViewModel();
      expect(counterViewModel.counter, 0);
    });

    test('incrementCounter - 正しく数値が加算されて、リスナーが変更をキャッチしていること', () {
      final counterViewModel = CounterViewModel();
      bool isNotified = false;

      counterViewModel.addListener(() {
        isNotified = true;
      });

      counterViewModel.incrementCounter();

      expect(counterViewModel.counter, 1);
      expect(isNotified, true);
    });
  });
}
