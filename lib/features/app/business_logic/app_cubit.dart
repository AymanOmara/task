import 'package:domain/features/app/use_case/get_current_language_use_case.dart';
import 'package:domain/features/app/use_case/init_language_use_case.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:task/core/ui/theme/i_app_theme.dart';
import 'package:task/core/ui/theme/light_app_theme.dart';

import 'app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit(this._currentLanguageUseCase, this._initLanguageUseCase)
    : super(AppInitial()) {
    _setUpLanguage();
    theme = Get.isDarkMode ? LightAppTheme() : LightAppTheme();
  }

  final GetCurrentLanguageUseCase _currentLanguageUseCase;
  final InitLanguageUseCase _initLanguageUseCase;
  String currentLocale = "";

  void _setUpLanguage() {
    if (_currentLanguageUseCase() == "") {
      currentLocale = Get.deviceLocale?.languageCode ?? "en";
      _initLanguageUseCase(currentLocale);
    } else {
      currentLocale = _currentLanguageUseCase();
    }
  }

  late IAppTheme theme;

  void changeTheme() {
    theme = Get.isDarkMode ? LightAppTheme() : LightAppTheme();
  }
}
