import 'package:diary/features/write_notes/ui/widgets/appbar_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/body_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/date_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/time_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/title_formating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';

class WriteNotes extends StatelessWidget {
  WriteNotes({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: Padding(
            padding: EdgeInsets.only(right: 15.w),
          child: AppbarFormating(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              DateFormating(),
              verticalSpacing(15),
              TimeFormating(),
              verticalSpacing(15),
              TitleFormating(),
              verticalSpacing(20),
              BodyFormating(),
            ],
          ),
        ),
      ),
    );
  }
}
