import 'package:diary/core/routing/routing_constant.dart';
import 'package:diary/features/home/home.dart';
import 'package:flutter/material.dart';

class RoutingGenerate{
  static Route<dynamic>? onGenerateRoute(routeSettings){
    switch(routeSettings.name) {
      case RoutingConstant.home:
        return MaterialPageRoute(builder: (context) => const Home());
      default:
        return null;
    }
  }
}