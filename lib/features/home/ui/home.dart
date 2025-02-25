import 'package:diary/core/helpers/extension.dart';
import 'package:diary/features/home/ui/widgets/appbar/ui/home_appbar_formating.dart';
import 'package:diary/features/home/ui/widgets/slidable/ui/home_slidable_formating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/routing/routing_constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(RoutingConstant.writeNotes);
        },
        child: Icon(Icons.edit),
      ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: HomeAppbarFormating()
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return HomeSlidAbleFormating();
                    },
                    separatorBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.all(7.0),
                      );
                    },
                    itemCount: 10
                ),
              ),
            ],
          )
      ),
    );
  }
}
