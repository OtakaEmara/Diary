import 'package:flutter/material.dart';

import '../../../../core/widgets/text_form_field.dart';

class BodyFormating extends StatelessWidget {
  BodyFormating({super.key});

  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTextFormField(
        controller: bodyController,
        expands: true,
        hintText: 'start',
        validator: (p0) {
          if(bodyController.text.isEmpty){
            return '';
          }
          return null;
        },
        onChanged: (p0) {
          bodyController.text = p0;
        },
      ),
    );
  }
}
