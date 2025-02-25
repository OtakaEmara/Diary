import 'package:diary/core/helpers/extension.dart';
import 'package:diary/features/write_notes/ui/widgets/appbar/ui/widgets/write_notes_appbar_check_action_formating.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../core/theming/colors.dart';

class WriteNotesAppbarFormating extends StatelessWidget {

  const WriteNotesAppbarFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: Icon(Icons.arrow_back_ios, color: DefaultColors.white),
      ),
      title: Text('write'.tr),
      titleSpacing: 0,
      actions: [
        WriteNotesAppbarCheckActionFormating(),
      ],
    );
  }
}
