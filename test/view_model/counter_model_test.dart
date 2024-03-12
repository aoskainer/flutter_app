import 'package:flutter_app/view_model/counter_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  test('Counter increments', () {
    // プロバイダを作成し、デフォルトのプロバイダをオーバーライドするためのコンテナを作成します。
    final container = ProviderContainer();
    // テスト実行前のカウンター値を確認します。
    expect(container.read(counterModelProvider).counter, 0);

    // incrementCounterを呼び出してカウンターをインクリメントします。
    container.read(counterModelProvider).incrementCounter();

    // カウンターが正しくインクリメントされたか確認します。
    expect(container.read(counterModelProvider).counter, 1);

    // ProviderContainerを破棄します。
    container.dispose();
  });
}
