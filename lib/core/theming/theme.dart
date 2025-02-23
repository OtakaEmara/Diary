import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
        color: DefaultColors.darkGrey
    ),
    scaffoldBackgroundColor: DefaultColors.darkGrey,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: DefaultColors.mainBlueAccent
    )
);