import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../../../../../core/theming/colors.dart';

class HomeSlidAbleEditFormating extends StatelessWidget {
  const HomeSlidAbleEditFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) {

      },
      backgroundColor: DefaultColors.mainBlueAccent,
      foregroundColor: DefaultColors.white,
      icon: Icons.edit,
      label: 'edit'.tr,
    );
  }
}
