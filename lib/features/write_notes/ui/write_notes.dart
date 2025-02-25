
import 'package:diary/features/write_notes/ui/widgets/appbar/ui/write_notes_appbar_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/write_notes_body_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/write_notes_date_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/write_notes_time_formating.dart';
import 'package:diary/features/write_notes/ui/widgets/write_notes_title_formating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../logic/cubit/write_notes_cubit.dart';

class WriteNotes extends StatelessWidget {
  const WriteNotes({super.key});

  @override
  Widget build(BuildContext context) {

    var cubit = WriteNotesCubit.get(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: WriteNotesAppbarFormating(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: cubit.formKey,
          child: Column(
            children: [
              WriteNotesDateFormating(),
              verticalSpacing(15),
              WriteNotesTimeFormating(),
              verticalSpacing(15),
              WriteNotesTitleFormating(),
              verticalSpacing(20),
              WriteNotesBodyFormating(),
            ],
          ),
        ),
      ),
    );
  }
}
