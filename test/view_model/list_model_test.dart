import 'package:flutter_app/view_model/list_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ListModel Tests', () {
    // MyListViewModelの初期状態をテスト
    test('Initial values are set as expected', () {
      final viewModel = ListModel();

      expect(viewModel.keyList, ['Amazon', 'Google', 'Facebook']);
    });

    // addToList メソッドがリストに項目を追加することをテスト
    test('addToList adds an item to the list', () {
      final viewModel = ListModel();

      // リスナーが変更を検知できるかをテストするための変数
      bool isNotified = false;

      // リスナーを登録
      viewModel.addListener(() {
        isNotified = true;
      });

      // リストに項目を追加
      viewModel.addToList('Twitter');

      // リストに項目が追加されたかを確認
      expect(viewModel.keyList.contains('Twitter'), true);
      // リスナーが通知を受け取ったかを確認
      expect(isNotified, true);
    });
  });
}
