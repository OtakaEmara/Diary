import 'package:diary/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';
import '../../logic/cubit/write_notes_cubit.dart';

class TitleFormating extends StatelessWidget {
  const TitleFormating({super.key});


  @override
  Widget build(BuildContext context) {
    var cubit = WriteNotesCubit.get(context);
    return DefaultTextFormField(
      controller: cubit.titleController,
      icon: Icon(Icons.title_outlined,color: DefaultColors.lighterShadeGrey),
      maxLines: 1,
      hintText: 'title',
      validator: (p0) {
        if(cubit.titleController.text.isEmpty){
          return '';
        }
        return null;
      },
      onChanged: (p0) {
        cubit.titleController.text = p0;
      },
    );
  }
}
