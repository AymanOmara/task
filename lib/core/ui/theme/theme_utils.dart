import 'package:flutter/material.dart';
import 'package:task/core/di/injector.dart';
import 'package:task/features/app/business_logic/app_cubit.dart';

import 'i_app_theme.dart';

extension ThemeUtils on Widget {
  IAppTheme get theme => getIt<AppCubit>().theme;
}
extension ThemeUtilss on State {
  IAppTheme get theme => getIt<AppCubit>().theme;
}
