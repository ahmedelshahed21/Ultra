import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void changeIndex(int index) {
    emit(index);
  }

  void resetToHome() {
    emit(0);
  }
}