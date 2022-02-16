import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:kazansummit/cubit/auth_cubit.dart';
import 'package:kazansummit/cubit/cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => BottomNavigationControllerSelect());
  sl.registerFactory(() => FilterCubit());
  sl.registerFactory(() => LangCubit());
  sl.registerFactory(() => SlidingAutgCubit());
  sl.registerFactory(() => AuthCubit());
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  final FlutterAppAuth appAuth = FlutterAppAuth();
  sl.registerLazySingleton(() => appAuth);

  final FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  sl.registerLazySingleton(() => secureStorage);
}
