import 'package:flutter_app/view_model/my_list_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final myListViewModelProvider =
    ChangeNotifierProvider((ref) => MyListViewModel());
