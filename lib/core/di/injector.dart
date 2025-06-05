import 'package:get_it/get_it.dart';
import 'package:task/features/app/business_logic/app_cubit.dart';
import 'package:task/features/home/features/main/business_logic/home_cubit.dart';
import 'package:task/features/home/features/navigation_bar/business_logic/home_navigation_bar_cubit.dart';

var getIt = GetIt.I;

void registerDependencies(GetIt diInjector) async {
  getIt.pushNewScope();

  /// ********* Common **********

  getIt.registerSingleton(AppCubit(diInjector(), diInjector()));

  /// ********* Home **********
  getIt.registerSingleton(HomeNavigationBarCubit());
  getIt.registerFactory(() => HomeCubit(diInjector()));
}
