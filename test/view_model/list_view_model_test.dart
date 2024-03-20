import 'package:flutter_app/view_model/list_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../shared/create_provider_container.dart';

void main() {
  group('ListViewModel Tests', () {
    test('初期状態で3つのStringが存在していること', () {
      final container = createProviderContainer();
      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook']),
      );
    });

    test('additem - リストに正しく項目が追加されること', () {
      final container = createProviderContainer();
      container.read(listViewModelProvider.notifier).addItem('Twitter');
      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook', 'Twitter']),
      );
    });

    test('reset - リストが初期状態にリセットされること', () {
      final container = createProviderContainer();

      // リストに項目を追加する。
      container.read(listViewModelProvider.notifier).addItem('Twitter');

      // リセットする。stateが初期状態に戻るはず。
      container.read(listViewModelProvider.notifier).reset();

      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook']),
      );
    });
  });
}
