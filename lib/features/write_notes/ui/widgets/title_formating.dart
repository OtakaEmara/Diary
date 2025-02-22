import 'package:diary/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../core/theming/colors.dart';

class TitleFormating extends StatelessWidget {
  TitleFormating({super.key});

  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      controller: titleController,
      icon: Icon(Icons.title_outlined,color: DefaultColors.grey),
      hintText: 'title',
      validator: (p0) {
        if(titleController.text.isEmpty){
          return '';
        }
        return null;
      },
      onChanged: (p0) {
        titleController.text = p0;
      },
    );
  }
}
