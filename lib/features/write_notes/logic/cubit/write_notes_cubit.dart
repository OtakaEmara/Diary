import 'package:diary/features/write_notes/logic/cubit/write_notes_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../../../../core/sqflite/sqflite_constants.dart';

class WriteNotesCubit extends Cubit<WriteNotesStates> {
  WriteNotesCubit() : super(WriteNotesInitialStates());

  static WriteNotesCubit get(context) => BlocProvider.of(context);

  final formKey = GlobalKey<FormState>();
  var dateController = TextEditingController();
  var timeController = TextEditingController();
  var titleController = TextEditingController();
  var bodyController = TextEditingController();

  void createNotes() {
    openDatabase(
      'note.db',
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE note (id INTEGER PRIMARY KEY, date TEXT,time TEXT, title TEXT, body TEXT, notify TEXT)');
      },
      onOpen: (db) {

      },
    ).then((onValue) {
      SqfLiteConstants.database = onValue;
      emit(CreateWriteNotesSuccessStates());
    }).catchError((onError) {
      emit(CreateWriteNotesErrorStates());
    });
  }

  Future insertData({
    required String date,required DateTime scheduledDate, required String time, required String title, required String body,required bool notify
  }) async{
    SqfLiteConstants.database?.transaction((txn) async{
      txn.rawInsert('INSERT INTO note(date,time, title, body, notify) VALUES("$date","$time", "$title", "$body","$notify")').then((onValue){
        emit(InsertWriteNotesSuccessStates());
      }).catchError((onError){
        emit(InsertWriteNotesErrorStates());
      });
    });
  }

}