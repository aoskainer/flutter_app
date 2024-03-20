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

    test('addToList - リストに正しく項目が追加されること', () {
      final container = createProviderContainer();
      container.read(listViewModelProvider.notifier).addToList('Twitter');
      expect(
        container.read(listViewModelProvider).items,
        equals(['Amazon', 'Google', 'Facebook', 'Twitter']),
      );
    });
  });
}
