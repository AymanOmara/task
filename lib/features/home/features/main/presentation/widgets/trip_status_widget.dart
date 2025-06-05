import 'package:flutter/material.dart';
import 'package:task/core/ui/theme/colors.dart';

class TripStatusWidget extends StatelessWidget {
  const TripStatusWidget({super.key, required this.tripStatus});

  final String tripStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.center,
          stops: [0.1, 0.4],
          colors: [burntOrange, black],
        ),

        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: burntOrange, width: 1.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tripStatus,
            style: TextStyle(
              color: Colors.orange,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 4),
          Icon(Icons.keyboard_arrow_down, color: Colors.orange, size: 16),
        ],
      ),
    );
  }
}
