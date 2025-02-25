import 'package:diary/core/sqflite/sqflite_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_states.dart';
import '../slidable/ui/home_slidable_formating.dart';

class HomeListViewAllDataFormating extends StatelessWidget {
  const HomeListViewAllDataFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getData(SqfLiteConstants.database),
      child: BlocConsumer<HomeCubit, HomeStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = HomeCubit.get(context);
            return Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return HomeSlidAbleFormating(getExpansionTileCardNotes: cubit.getNotes,index: index,);
                  },
                  separatorBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(7.0),
                    );
                  },
                  itemCount: cubit.getNotes.length
              ),
            );
          }
      )
    );
  }
}
