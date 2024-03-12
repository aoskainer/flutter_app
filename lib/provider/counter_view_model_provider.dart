import 'package:flutter_app/view_model/counter_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterViewModelProvider =
    ChangeNotifierProvider((ref) => CounterViewModel());
