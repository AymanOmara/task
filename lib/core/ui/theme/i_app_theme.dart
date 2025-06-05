import 'package:flutter/material.dart';

abstract interface class IAppTheme {
  final ThemeData themeData;
  final TextStyle agP2Regular;
  final TextStyle agH5Regular;
  final TextStyle agP2Medium;
  final TextStyle agButtonLinkMedium;

  const IAppTheme(
    this.themeData,
    this.agP2Regular,
    this.agP2Medium,
    this.agH5Regular,
    this.agButtonLinkMedium,
  );
}
