import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../logic/cubit/home_cubit.dart';
import '../../../logic/cubit/home_states.dart';
import '../slidable/ui/home_slidable_formating.dart';

class HomeListViewAllDataFormating extends StatelessWidget {
  const HomeListViewAllDataFormating({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var homeCubit = HomeCubit.get(context);
          return Expanded(
            child: Skeletonizer(
              enabled: homeCubit.getExpansionTileCardNotesNotes.isEmpty,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return HomeSlidAbleFormating(
                      homeCubit: homeCubit,
                      index: index,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(7.0),
                    );
                  },
                  itemCount: homeCubit.getExpansionTileCardNotesNotes.length
              ),
            ),
          );
        }
    );
  }
}
