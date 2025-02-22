import 'package:diary/core/theming/colors.dart';
import 'package:diary/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormating extends StatelessWidget {
  DateFormating({super.key});

  final dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTextFormField(
      controller: dateController,
      keyboardType: TextInputType.text,
      hintText: DateFormat.yMMMd().format(DateTime.parse(DateTime.now().toString())),
      icon: Icon(Icons.calendar_month_outlined,color: DefaultColors.grey),
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.parse("2050-12-31"),
        ).then((onValue){
          dateController.text = DateFormat.yMMMd().format(DateTime.parse(onValue.toString()));
        });
      },
      validator: (p0) {
        if(dateController.text.isEmpty){
          return '';
        }
        return null;
      },
    );
  }
}
