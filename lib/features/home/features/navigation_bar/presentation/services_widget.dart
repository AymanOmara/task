import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/home/features/navigation_bar/business_logic/home_navigation_bar_cubit.dart';
import 'package:task/features/home/features/navigation_bar/display/home_services.dart';
import 'package:task/features/home/features/navigation_bar/presentation/service_widget.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var homeNavigationCubit = context.watch<HomeNavigationBarCubit>();
    return Row(
      spacing: 32,
      children:
          HomeServices.values
              .map(
                (e) => ServiceWidget(
                  selectedService: homeNavigationCubit.selectedService,
                  service: e,
                ),
              )
              .toList(),
    );
  }
}
