import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: DefaultColors.darkGrey,
        surfaceTintColor: DefaultColors.darkGrey,
    ),
    scaffoldBackgroundColor: DefaultColors.darkGrey,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: DefaultColors.mainBlueAccent
    )
);