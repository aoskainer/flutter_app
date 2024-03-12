import 'package:flutter_app/view_model/list_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ListViewModel Tests', () {
    test('初期状態で3つのStringが存在していること', () {
      final listViewModel = ListViewModel();
      expect(listViewModel.keyList, ['Amazon', 'Google', 'Facebook']);
    });

    // addToList メソッドがリストに項目を追加することをテスト
    test('addToList - リストに正しく項目が追加されて、リスナーが変更をキャッチしていること', () {
      final listViewModel = ListViewModel();
      bool isNotified = false;

      listViewModel.addListener(() {
        isNotified = true;
      });

      listViewModel.addToList('Twitter');

      expect(listViewModel.keyList.contains('Twitter'), true);
      expect(isNotified, true);
    });
  });
}
