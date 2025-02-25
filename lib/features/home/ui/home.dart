import 'package:diary/core/helpers/extension.dart';
import 'package:diary/features/home/ui/widgets/appbar/ui/home_appbar_formating.dart';
import 'package:diary/features/home/ui/widgets/listview/home_list_view_all_data_formating.dart';
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
              HomeListViewAllDataFormating()
            ],
          )
      ),
    );
  }
}
