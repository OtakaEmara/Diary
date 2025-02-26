import 'package:diary/features/home/logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../widgets/home_slidable_delete_formating.dart';
import '../widgets/home_slidable_edit_formating.dart';
import '../widgets/home_slidable_expansion_card_formating.dart';

class HomeSlidAbleFormating extends StatelessWidget {
  HomeSlidAbleFormating({super.key, required this.homeCubit, required this.index});

  HomeCubit homeCubit;
  int index;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          HomeSlidAbleDeleteFormating(homeCubit: homeCubit,index: index,),
          HomeSlidAbleEditFormating(),
        ],
      ),
      child: HomeSlidAbleExpansionCardFormating(getExpansionTileCardNotesData: homeCubit.getExpansionTileCardNotesNotes,index: index,),
    );
  }
}
