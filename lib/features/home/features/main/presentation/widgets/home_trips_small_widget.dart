import 'package:domain/features/trips/entity/trip_entity.dart';
import 'package:flutter/material.dart';
import 'package:task/features/home/features/main/presentation/widgets/trip_card.dart';

class HomeTripsSmallWidget extends StatelessWidget {
  const HomeTripsSmallWidget({super.key, required this.trips});

  final List<TripEntity> trips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 19),
      child: SingleChildScrollView(
        child: Wrap(
          children: trips.map((trip) => TripCard(trip: trip)).toList(),
        ),
      ),
    );
  }
}
