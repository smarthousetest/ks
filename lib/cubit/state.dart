import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationControllerSelect extends Cubit<int> {
  BottomNavigationControllerSelect() : super(0);

  void select(int index) {
    emit(index);
  }
}
