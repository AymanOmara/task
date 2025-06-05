import 'package:domain/common/exceptions/network_exception.dart';
import 'package:domain/common/result.dart';
import 'package:domain/features/trips/entity/trip_entity.dart';

abstract interface class ITripsRepository {
  Future<Result<List<TripEntity>, NetworkException>> fetchTrips();
}
