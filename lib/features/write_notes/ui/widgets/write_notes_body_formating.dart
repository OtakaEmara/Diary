import 'package:flutter/material.dart';

import '../../../../core/widgets/text_form_field.dart';
import '../../logic/cubit/write_notes_cubit.dart';

class WriteNotesBodyFormating extends StatelessWidget {
  const WriteNotesBodyFormating({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = WriteNotesCubit.get(context);
    return Expanded(
      child: DefaultTextFormField(
        controller: cubit.bodyController,
        expands: true,
        hintText: 'start',
        validator: (p0) {
          if(cubit.bodyController.text.isEmpty){
            return '';
          }
          return null;
        },
        onChanged: (p0) {
          cubit.bodyController.text = p0;
        },
      ),
    );
  }
}
