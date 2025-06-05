import 'package:flutter/material.dart';

import 'colors.dart';
import 'i_app_theme.dart';

class LightAppTheme implements IAppTheme {
  @override
  ThemeData get themeData => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: black),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: white),
    primaryColor: black,
    scaffoldBackgroundColor: black,
  );

  @override
  TextStyle get agP2Regular =>
      TextStyle(color: white, fontSize: 14, fontWeight: FontWeight.w400);

  @override
  TextStyle get agP2Medium =>
      TextStyle(color: white, fontSize: 14, fontWeight: FontWeight.w500);
}
