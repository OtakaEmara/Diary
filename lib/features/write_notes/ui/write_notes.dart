import 'package:diary/features/write_notes/ui/widgets/body_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/date_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/time_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/title_formating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/colors.dart';

class WriteNotes extends StatelessWidget {
  WriteNotes({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('write'.tr),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.check,color: DefaultColors.blue,)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              DateFormating(),
              verticalSpacing(15),
              TimeFormating(),
              verticalSpacing(15),
              TitleFormating(),
              verticalSpacing(15),
              BodyFormating(),
            ],
          ),
        ),
      ),
    );
  }
}
