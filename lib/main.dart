import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:task/core/di/injector.dart';

import 'core/routing/app_router.dart';
import 'core/routing/app_routes.dart';

import 'core/translation_service/translation_service.dart';
import 'features/app/business_logic/app_cubit.dart';
import 'features/app/business_logic/app_states.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await DI.registerDependencies();

  registerDependencies(diInjector);

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          Get.isPlatformDarkMode ? Brightness.dark : Brightness.light,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<AppCubit>())],
      child: BlocBuilder<AppCubit, AppStates>(
        builder: (context, state) {
          AppCubit cubit = BlocProvider.of(context);
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: GetMaterialApp(
              themeMode: ThemeMode.light,
              theme: getIt<AppCubit>().theme.themeData,
              supportedLocales: const <Locale>[Locale('en')],
              translations: TranslationService(),
              title: 'Task',
              debugShowCheckedModeBanner: false,
              onGenerateRoute: AppRouter().generateRouter,
              initialRoute: AppRoutes.home,
              locale: Locale(cubit.currentLocale),
              localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
            ),
          );
        },
      ),
    );
  }
}
