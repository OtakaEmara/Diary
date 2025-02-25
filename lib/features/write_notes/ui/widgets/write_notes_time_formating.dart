import 'package:diary/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';
import '../../logic/cubit/write_notes_cubit.dart';

class WriteNotesTimeFormating extends StatelessWidget {
  const WriteNotesTimeFormating({super.key});


  @override
  Widget build(BuildContext context) {
    var cubit = WriteNotesCubit.get(context);
    return DefaultTextFormField(
      controller: cubit.timeController,
      icon: Icon(Icons.watch_later_outlined, color: DefaultColors.lighterShadeGrey),
      hintText: TimeOfDay.now().format(context),
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        ).then((onValue) {
          if (onValue != null && context.mounted) {
            cubit.timeController.text = onValue.format(context);
          }
        });
      },
      validator: (p0) {
        if (cubit.timeController.text.isEmpty) {
          cubit.timeController.text = TimeOfDay.now().format(context);
        }
        return null;
      },
    );
  }
}