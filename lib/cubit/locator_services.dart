import 'package:get_it/get_it.dart';
import 'package:kazansummit/cubit/state.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => BottomNavigationControllerSelect());
}
