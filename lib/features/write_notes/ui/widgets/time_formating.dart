import 'package:diary/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/colors.dart';

class TimeFormating extends StatelessWidget {
  TimeFormating({super.key});

  final timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    timeController.text = TimeOfDay.now().format(context);
    return DefaultTextFormField(
      controller: timeController,
      icon: Icon(Icons.watch_later_outlined, color: DefaultColors.lighterShadeGrey),
      hintText: timeController.text,
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