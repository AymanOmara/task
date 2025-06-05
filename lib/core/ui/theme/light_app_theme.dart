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

  @override
  TextStyle get agH5Regular => TextStyle(color: white, fontSize: 24);

  @override
  TextStyle get agButtonLinkMedium =>
      TextStyle(color: black, fontSize: 14, fontWeight: FontWeight.w500);

  @override
  TextStyle get agH6Regular => TextStyle(fontSize: 18, color: white);

  @override
  TextStyle get agS1Regular => TextStyle(color: textHint, fontSize: 12);

  @override
  TextStyle get undefined =>
      TextStyle(color: amberAccent, fontSize: 12, fontWeight: FontWeight.w600);
}
