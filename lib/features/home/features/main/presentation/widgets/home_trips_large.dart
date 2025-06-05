import 'package:domain/features/trips/entity/trip_entity.dart';
import 'package:flutter/material.dart';
import 'package:task/features/home/features/main/presentation/widgets/trip_card.dart';

class HomeTripsLarge extends StatelessWidget {
  const HomeTripsLarge({super.key, required this.trips});

  final List<TripEntity> trips;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 24),
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 16,
          children: trips.map((trip) => TripCard(trip: trip)).toList(),
        ),
      ),
    );
  }
}
