import 'package:get_it/get_it.dart';
import 'package:kazansummit/cubit/cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => BottomNavigationControllerSelect());
  sl.registerFactory(() => FilterCubit());
  sl.registerFactory(() => LangCubit());
}
