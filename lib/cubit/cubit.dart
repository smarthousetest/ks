import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kazansummit/cubit/state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  void setLocale(Locale locale) {
    emit(locale);
  }

  void clearLocale() {
    emit(Locale('en'));
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
