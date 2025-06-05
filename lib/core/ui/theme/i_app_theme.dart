import 'package:flutter/material.dart';

abstract interface class IAppTheme {
  final ThemeData themeData;
  final TextStyle agP2Regular;
  final TextStyle agP2Medium;

  const IAppTheme(this.themeData, this.agP2Regular, this.agP2Medium);
}
