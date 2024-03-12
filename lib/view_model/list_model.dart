import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final listModelProvider = ChangeNotifierProvider((ref) => ListModel());

class ListModel extends ChangeNotifier {
  final List<String> _keyList = ['Amazon', 'Google', 'Facebook'];

  List<String> get keyList => _keyList;

  void addToList(String value) {
    _keyList.add(value);
    notifyListeners();
  }
}
