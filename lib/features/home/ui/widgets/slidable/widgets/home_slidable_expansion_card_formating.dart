import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class HomeSlidAbleExpansionCardFormating extends StatelessWidget {
  const HomeSlidAbleExpansionCardFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTileCard(
      title: Text('',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      initiallyExpanded: true,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 10,bottom: 10),
          child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("",style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('',style: TextStyle(fontSize: 14,color: Colors.grey)),
                          Text('',style: TextStyle(fontSize: 13,color: Colors.grey)),
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
