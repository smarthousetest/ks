import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kazansummit/cubit/state.dart';

class BottomNavigationControllerSelect extends Cubit<int> {
  BottomNavigationControllerSelect() : super(0);

  void select(int index) {
    emit(index);
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
