import 'package:get_it/get_it.dart';
import 'package:task/features/app/business_logic/app_cubit.dart';

var getIt = GetIt.I;

void registerDependencies(GetIt diInjector) async {
  getIt.pushNewScope();

  /// ********* Common **********
  getIt.registerSingleton(AppCubit(diInjector(), diInjector()));
}
