import 'package:flutter_app/view_model/list_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final listViewModelProvider = ChangeNotifierProvider((ref) => ListViewModel());
