import 'package:flutter_app/provider/list_view_model_provider.dart';
import 'package:flutter_app/view_model/list_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ListViewModelProvider Tests', () {
    test('ProviderContainerからListViewModelのインスタンスを取得できることを確認する', () {
      final container = ProviderContainer();
      final instance = container.read(listViewModelProvider);
      expect(instance, isA<ListViewModel>());
    });
  });
}
