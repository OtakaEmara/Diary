import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialStates());

  static HomeCubit get(context) => BlocProvider.of(context);

  List getExpansionTileCardNotesNotes = [];

  //get expansion tile card notes data
  Future getExpansionTileCardNotesData(Database? database) async{
    getExpansionTileCardNotesNotes = [];
    emit(HomeGetExpansionTileCardNotesDataLoadingStates());
    database!.rawQuery('SELECT * FROM notes').then((value) {
      getExpansionTileCardNotesNotes = value;
      emit(HomeGetExpansionTileCardNotesDataSuccessStates());
    }).catchError((error) {
      emit(HomeGetExpansionTileCardNotesDataErrorStates());
    });
  }

  //delete notes data
  Future deleteNotesData({required int id, required Database? database}) async{
    emit(HomeDeleteNotesDataLoadingStates());
    database!.rawDelete('DELETE FROM notes WHERE id = ?', [id]).then((value) {
      getExpansionTileCardNotesData(database);
      emit(HomeDeleteNotesDataSuccessStates());
    }).catchError((error) {
      emit(HomeDeleteNotesDataErrorStates());
    });
  }

}