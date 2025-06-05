import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/core/ui/theme/colors.dart';
import 'package:task/core/ui/theme/theme_utils.dart';
import 'package:task/features/home/features/navigation_bar/display/home_services.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    super.key,
    required this.selectedService,
    required this.service,
  });

  final HomeServices service;
  final HomeServices selectedService;

  @override
  Widget build(BuildContext context) {
    var selected = service == selectedService;
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              service.name.tr,
              style: selected
                  ? theme.agP2Medium
                  : theme.agP2Regular.copyWith(color: textHint),
            ),
          ),
        ],
      ),
    );
  }
}
