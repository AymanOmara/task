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
}

