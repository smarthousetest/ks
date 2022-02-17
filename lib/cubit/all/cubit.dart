import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kazansummit/cubit/all/model.dart';
import 'package:kazansummit/cubit/all/repository.dart';
import 'package:kazansummit/cubit/all/state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/cubit/locator_services.dart';
import 'package:shared_preferences/shared_preferences.dart';

final SharedPreferences sharedPreferences = sl<SharedPreferences>();

class BottomNavigationControllerSelect extends Cubit<int> {
  BottomNavigationControllerSelect() : super(0);

  void select(int index) {
    emit(index);
  }
}

class LangCubit extends Cubit<Locale> {
  LangCubit() : super(Locale('en'));

  Locale? _locale;

  Locale? get locale => _locale;

  void getlocale() async {
    final locale = await sharedPreferences.getString("locale");
    print("locale $locale");
    if (locale != null) {
      setLocale(Locale("$locale"));
    }
  }

  void setLocale(Locale locale) async {
    await sharedPreferences.setString("locale", locale.toString());
    emit(locale);
  }
}

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterClosedState());

  Future<void> open() async {
    if (state is FilterOpenState) emit(FilterClosedState());
    emit(FilterOpenState());
  }

  Future<void> hide() async {
    if (state is FilterClosedState) return;
    emit(FilterClosedState());
  }
}

class SlidingAutgCubit extends Cubit<SlidingAuthState> {
  SlidingAutgCubit() : super(SlidingAuthClosedState());

  Future<void> open() async {
    if (state is SlidingAuthOpenState) emit(SlidingAuthClosedState());
    emit(SlidingAuthOpenState());
  }

  Future<void> hide() async {
    if (state is SlidingAuthClosedState) return;
    emit(SlidingAuthClosedState());
  }
}

class ProfilePageCubit extends Cubit<ProfilePageState> {
  final ProfilePageRepository profilePageRepository;

  ProfilePageCubit(this.profilePageRepository)
      : super(ProfilePageLoadedState());

  Future<void> fetchProfilePage() async {
    print("fetchProfilePage");
    try {
      print("1");
      emit(ProfilePageLoadingState());
      print("2");

      ProfilePageModel _loaded =
          await profilePageRepository.getAllProfilePage();

      print("_loaded $_loaded");

      emit(ProfilePageLoadedState(loadedProfilePage: _loaded));
    } catch (_) {
      emit(ProfilePageErrorState());
    }
  }
}
