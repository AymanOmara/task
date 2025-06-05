import 'package:flutter/material.dart';

abstract interface class IAppTheme {
  final ThemeData themeData;
  final TextStyle agP2Regular;
  final TextStyle agH5Regular;
  final TextStyle agH6Regular;
  final TextStyle agP2Medium;
  final TextStyle agButtonLinkMedium;
  final TextStyle agS1Regular;
  final TextStyle undefined;

  const IAppTheme(
    this.themeData,
    this.agP2Regular,
    this.agP2Medium,
    this.agH5Regular,
    this.agButtonLinkMedium,
    this.agH6Regular,
    this.agS1Regular,
    this.undefined,
  );
}
