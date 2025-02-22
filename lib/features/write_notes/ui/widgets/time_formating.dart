import 'package:diary/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class TimeFormating extends StatelessWidget {
  TimeFormating({super.key});

  final timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      controller: timeController,
      icon: Icon(Icons.watch_later_outlined, color: DefaultColors.grey),
      hintText: TimeOfDay.now().format(context),
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: TimeOfDay.now(),
        ).then((onValue) {
          if (onValue != null && context.mounted) {
            timeController.text = onValue.format(context);
          }
        });
      },
      validator: (p0) {
        if (timeController.text.isEmpty) {
          return '';
        }
        return null;
      },
    );
  }
}