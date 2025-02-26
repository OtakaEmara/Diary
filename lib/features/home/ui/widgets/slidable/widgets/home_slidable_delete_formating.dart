import 'package:diary/core/sqflite/sqflite_constants.dart';
import 'package:diary/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../../../../../core/theming/colors.dart';

class HomeSlidAbleDeleteFormating extends StatelessWidget {
  const HomeSlidAbleDeleteFormating({super.key, required this.homeCubit, required this.index});

  final HomeCubit homeCubit;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) {
        homeCubit.deleteNotesData(id: homeCubit.getExpansionTileCardNotesNotes[index]['id'],database: SqfLiteConstants.database);
      },
      backgroundColor: DefaultColors.red,
      foregroundColor: DefaultColors.white,
      icon: Icons.delete,
      label: 'delete'.tr,
    );
  }
}
