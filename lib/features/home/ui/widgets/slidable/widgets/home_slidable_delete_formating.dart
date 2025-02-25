import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../../../../../core/theming/colors.dart';

class HomeSlidAbleDeleteFormating extends StatelessWidget {
  const HomeSlidAbleDeleteFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) {

      },
      backgroundColor: DefaultColors.red,
      foregroundColor: DefaultColors.white,
      icon: Icons.delete,
      label: 'delete'.tr,
    );
  }
}
