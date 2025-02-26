import 'package:diary/features/write_notes/logic/cubit/write_notes_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/sqflite/sqflite_constants.dart';
import '../../../home/logic/cubit/home_cubit.dart';

class WriteNotesCubit extends Cubit<WriteNotesStates> {
  WriteNotesCubit() : super(WriteNotesInitialStates());

  static WriteNotesCubit get(context) => BlocProvider.of(context);

  final formKey = GlobalKey<FormState>();
  var dateController = TextEditingController();
  var timeController = TextEditingController();
  var titleController = TextEditingController();
  var bodyController = TextEditingController();

  void createNotes(context) {
    openDatabase(
      'notes.db',
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE notes (id INTEGER PRIMARY KEY, date TEXT,time TEXT, title TEXT, body TEXT, notify TEXT)');
      },
      onOpen: (db) {
        print('database opened');
        SqfLiteConstants.database = db;
        HomeCubit.get(context).getExpansionTileCardNotesData(db);
      },
    ).then((onValue) {
      emit(CreateWriteNotesSuccessStates());
    }).catchError((onError) {
      emit(CreateWriteNotesErrorStates());
    });
  }

  Future insertData(context,{
    required String date,required DateTime scheduledDate, required String time, required String title, required String body,required bool notify
  }) async{
    await SqfLiteConstants.database?.transaction((txn) async{
      await txn.rawInsert('INSERT INTO notes(date,time, title, body, notify) VALUES("$date","$time", "$title", "$body","$notify")').then((onValue){
        HomeCubit.get(context).getExpansionTileCardNotesData(SqfLiteConstants.database);
        emit(InsertWriteNotesSuccessStates());
      }).catchError((onError){
        emit(InsertWriteNotesErrorStates());
      });
    });
  }

}