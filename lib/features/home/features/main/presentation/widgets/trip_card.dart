import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/features/trips/entity/trip_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task/core/helper/utils.dart';
import 'package:task/core/ui/theme/colors.dart';
import 'package:task/core/ui/theme/theme_utils.dart';
import 'package:task/features/home/features/main/presentation/widgets/trip_status_widget.dart';

import 'over_lapping_avatars.dart';

class TripCard extends StatelessWidget {
  final TripEntity trip;

  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isSmallScreen = constraints.maxWidth < 600;

        return Container(
          width: isSmallScreen ? double.infinity : 243,
          margin: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0x1A000000),
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
            color: eerieBlack,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [white, black],
                          stops: [0.40, 1],
                        ),
                      ),
                      child: CachedNetworkImage(
                        imageUrl: trip.coverImage,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 16,
                      child: TripStatusWidget(tripStatus: trip.status),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 14),
                    Text(trip.title, style: theme.agH6Regular),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/ic_calendar.svg"),
                        SizedBox(width: 6),
                        Text(
                          buildNightsAndDateRange(
                              trip.dates.start, trip.dates.end),
                          style: theme.agS1Regular,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Divider(color: charcoal),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: OverlappingAvatars(
                            avatars: trip.participants
                                .map((e) => e.avatarUrl)
                                .toList(),
                          ),
                        ),
                        Text(
                          "${trip.unfinishedTasks} ${"unfinished_tasks".tr}",
                          style: theme.agS1Regular,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
