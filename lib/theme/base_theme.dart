import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'text_theme.dart';

final baseLightTheme = ThemeData(
  extensions: [appLightColors],
  brightness: Brightness.light,
  primaryColor: Colors.white,
  textTheme: baseTextTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
    centerTitle: false,
    titleTextStyle: baseTextTheme.headlineMedium?.copyWith(color: appLightColors.black),
  ),
);
