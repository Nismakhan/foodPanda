import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageControllerCubit extends Cubit<int> {
  HomePageControllerCubit(int initialState) : super(initialState);

  changeNotifierIndex({required index}) {
    emit(state);
  }
}
