import 'package:diary/core/routing/routing_constant.dart';
import 'package:diary/features/home/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/write_notes/logic/cubit/write_notes_cubit.dart';
import '../../features/write_notes/ui/write_notes.dart';

class RoutingGenerate{
  static Route<dynamic>? onGenerateRoute(routeSettings){
    switch(routeSettings.name) {

      case RoutingConstant.home:
        return MaterialPageRoute(builder: (context) => const Home());

        case RoutingConstant.writeNotes:
          return MaterialPageRoute(builder: (context) => BlocProvider(
            create: (context) => WriteNotesCubit(),
            child: WriteNotes(),
          ));
      default:
        return null;
    }
  }
}