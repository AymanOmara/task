import 'dart:convert';

import 'package:data/features/trips/model/trip_model.dart';
import 'package:domain/common/exceptions/general_exception.dart';
import 'package:domain/common/exceptions/network_exception.dart';
import 'package:domain/common/result.dart';
import 'package:domain/features/trips/entity/trip_entity.dart';
import 'package:domain/features/trips/repository/i_trips_repository.dart';
import 'package:flutter/services.dart';

class TripsRepository implements ITripsRepository {
  @override
  Future<Result<List<TripEntity>, NetworkException>> fetchTrips() async {
    try {
      var jsonString = await rootBundle.loadString('packages/data/assets/trips_mock.json');
      Map<String,dynamic> jsonList = jsonDecode(jsonString);
      List<Map<String, dynamic>> data =
      List<Map<String, dynamic>>.from(jsonList["trips"]);

      List<TripModel> metrics =
      data.map((e) => TripModel.fromJson(e)).toList();
      List<TripEntity> metricsEntities =
      metrics.map((e) => e.toEntity()).toList();
      return Success(metricsEntities);
    } catch (_) {
      return Failure(GeneralException());
    }
  }
}
