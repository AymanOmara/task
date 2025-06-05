import 'package:domain/features/app/use_case/get_current_language_use_case.dart';
import 'package:domain/features/app/use_case/init_language_use_case.dart';
import 'package:domain/features/trips/use_case/fetch_trips_use_case.dart';
import 'package:get_it/get_it.dart';

Future<void> setupUseCaseInjector(GetIt diInjector) async {
  /// ********* App **********
  diInjector.registerFactory(() => GetCurrentLanguageUseCase(diInjector()));
  diInjector.registerFactory(() => InitLanguageUseCase(diInjector()));

  /// ********* Trips **********
  diInjector.registerFactory(() => FetchTripsUseCase(diInjector()));
}
