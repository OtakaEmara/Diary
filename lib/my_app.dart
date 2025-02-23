import 'package:diary/core/routing/routing_constant.dart';
import 'package:diary/core/routing/routing_generate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/get/translations.dart';
import 'core/theming/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: darkTheme,
            onGenerateRoute: RoutingGenerate.onGenerateRoute,
            initialRoute: RoutingConstant.home,
            translations: Translation(),
            locale: Locale('en')
        )
    );
  }
}
