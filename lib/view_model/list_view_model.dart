import 'package:flutter/material.dart';

class ListViewModel extends ChangeNotifier {
  final List<String> _keyList = ['Amazon', 'Google', 'Facebook'];

  List<String> get keyList => _keyList;

  void addToList(String value) {
    _keyList.add(value);
    notifyListeners();
  }
}
