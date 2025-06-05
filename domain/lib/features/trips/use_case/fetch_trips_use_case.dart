import 'package:domain/common/exceptions/network_exception.dart';
import 'package:domain/common/result.dart';
import 'package:domain/features/trips/entity/trip_entity.dart';
import 'package:domain/features/trips/repository/i_trips_repository.dart';

class FetchTripsUseCase {
  final ITripsRepository _repository;

  const FetchTripsUseCase(this._repository);

  Future<Result<List<TripEntity>, NetworkException>> call() =>
      _repository.fetchTrips();
}
