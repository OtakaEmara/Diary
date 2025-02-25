import 'package:diary/core/helpers/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../logic/cubit/write_notes_cubit.dart';
import '../../../../../logic/cubit/write_notes_states.dart';

class WriteNotesAppbarCheckActionFormating extends StatefulWidget {
  const WriteNotesAppbarCheckActionFormating({super.key});

  @override
  State<WriteNotesAppbarCheckActionFormating> createState() => _WriteNotesAppbarCheckFormatingState();
}

class _WriteNotesAppbarCheckFormatingState extends State<WriteNotesAppbarCheckActionFormating> {

  double opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WriteNotesCubit, WriteNotesStates>(
      listener: (context, state) {
        if(state is InsertWriteNotesSuccessStates){
          context.pop();
        }
      },
      builder: (context, state) {
        var cubit = WriteNotesCubit.get(context);
        return GestureDetector(
          onTapDown: (_) => setState(() => opacity = 0.6),
          onTapUp: (_) => setState(() => opacity = 1.0),
          onTapCancel: () => setState(() => opacity = 1.0),
          onTap: () {
            if (cubit.formKey.currentState!.validate()) {
              cubit.insertData(
                  date: cubit.dateController.text,
                  scheduledDate: DateTime.now(),
                  time: cubit.timeController.text,
                  title: cubit.titleController.text,
                  body: cubit.bodyController.text,
                  notify: true
              );
            }
          },
          child: TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: opacity, end: opacity),
            duration: Duration(milliseconds: 100),
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: child,
              );
            },
            child: Icon(Icons.check, color: DefaultColors.mainBlueAccent, size: 30),
          ),
        );
      },
    );
  }
}
