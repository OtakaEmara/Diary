import 'package:diary/core/helpers/spacing.dart';
import 'package:diary/core/theming/colors.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSlidAbleExpansionCardFormating extends StatelessWidget {
  HomeSlidAbleExpansionCardFormating({super.key, required this.getExpansionTileCardNotesData, required this.index});

  List getExpansionTileCardNotesData;
  int index;

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      baseColor: DefaultColors.mainBlueAccent,
      shadowColor: DefaultColors.mainBlueAccent,
      title: Text(getExpansionTileCardNotesData[index]['title'],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      initiallyExpanded: true,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w,right: 10.w,bottom: 10.h),
          child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(getExpansionTileCardNotesData[index]['body'],style: TextStyle(fontSize: 20)),
                  verticalSpacing(10),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(getExpansionTileCardNotesData[index]['date'],style: TextStyle(fontSize: 14,color: Colors.grey)),
                          Text(getExpansionTileCardNotesData[index]['time'],style: TextStyle(fontSize: 13,color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ],
              )
          ),
        )
      ],
    );
  }
}
