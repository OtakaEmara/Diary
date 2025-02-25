import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../widgets/home_slidable_delete_formating.dart';
import '../widgets/home_slidable_edit_formating.dart';
import '../widgets/home_slidable_expansion_card_formating.dart';

class HomeSlidAbleFormating extends StatelessWidget {
  HomeSlidAbleFormating({super.key, required this.getExpansionTileCardNotes, required this.index});

  List getExpansionTileCardNotes;
  int index;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: [
          HomeSlidAbleDeleteFormating(),
          HomeSlidAbleEditFormating(),
        ],
      ),
      child: HomeSlidAbleExpansionCardFormating(getExpansionTileCardNotes: getExpansionTileCardNotes,index: index,),
    );
  }
}
