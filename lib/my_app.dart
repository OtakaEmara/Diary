import 'package:diary/core/routing/routing_constant.dart';
import 'package:diary/core/routing/routing_generate.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutingGenerate.onGenerateRoute,
      initialRoute: RoutingConstant.home,
    );
  }
}
