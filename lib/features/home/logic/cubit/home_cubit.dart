import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialStates());

  static HomeCubit get(context) => BlocProvider.of(context);

  List getNotes = [];

  void getData(Database? database) {
    getNotes = [];
    emit(HomeGetDataLoadingStates());
    database!.rawQuery('SELECT * FROM notes').then((value) {
      getNotes = value;
      emit(HomeGetDataSuccessStates());
    }).catchError((error) {
      emit(HomeGetDataErrorStates());
    });
  }
}