import 'package:diary/core/theming/colors.dart';
import 'package:diary/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../logic/cubit/write_notes_cubit.dart';

class WriteNotesDateFormating extends StatelessWidget {
  const WriteNotesDateFormating({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = WriteNotesCubit.get(context);
    return DefaultTextFormField(
      controller: cubit.dateController,
      keyboardType: TextInputType.text,
      hintText: DateFormat.yMMMd().format(DateTime.now()),
      icon: Icon(Icons.calendar_month_outlined,color: DefaultColors.lighterShadeGrey),
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.parse("2050-12-31"),
        ).then((onValue){
          cubit.dateController.text = DateFormat.yMMMd().format(DateTime.parse(onValue.toString()));
        });
      },
      validator: (p0) {
        if(cubit.dateController.text.isEmpty){
          cubit.dateController.text = DateFormat.yMMMd().format(DateTime.now());
        }
        return null;
      },
    );
  }
}
