import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kazansummit/cubit/all/api.dart';
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
    try {
      emit(ProfilePageLoadingState());
      ProfilePageModel _loaded =
          await profilePageRepository.getAllProfilePage();
      emit(ProfilePageLoadedState(loadedProfilePage: _loaded));
    } catch (_) {
      emit(ProfilePageErrorState());
    }
  }
}

class ClaimPageCubit extends Cubit<ClaimPageState> {
  final ClaimPageRepository claimPageRepository;

  ClaimPageCubit(this.claimPageRepository) : super(ClaimPageLoadedState());

  Future<void> fetchClaimPage(String id) async {
    try {
      emit(ClaimPageLoadingState());
      ClaimPageModel _loaded2 = await claimPageRepository.getAllClaimPage(id);
      print("_loaded $_loaded2");
      emit(ClaimPageLoadedState(loadedClaimPage: _loaded2));
    } catch (_) {
      emit(ClaimPageErrorState());
    }
  }
}

class ClaimDeleteCubit extends Cubit<ClaimDeleteState> {
  ClaimDeleteCubit() : super(ClaimDeleteEmptyState());

  Future<void> deleteclaim(String id) async {
    try {
      String resp = await DeleteClaimApi().delete(id);
      print(resp);
      if (resp == "Delete") {
        print("go del");
        emit(ClaimDeleteClaimState());
      } else {
        emit(ClaimDeleteErrorState());
      }
    } catch (_) {
      emit(ClaimDeleteErrorState());
    }
  }
}
