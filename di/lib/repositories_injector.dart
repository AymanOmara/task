import 'package:data/features/trips/repository/trip_repository.dart';
import 'package:domain/features/trips/repository/i_trips_repository.dart';
import 'package:get_it/get_it.dart';

Future<void> setupRepositoryInjector(GetIt diInjector) async {
  /// ********* Trips **********
  diInjector.registerSingleton<ITripsRepository>(TripsRepository());
}
