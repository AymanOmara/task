import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/di/injector.dart';
import 'package:task/features/home/features/navigation_bar/business_logic/home_navigation_bar_cubit.dart';

import 'home_navigation_bar_large_devices.dart';
import 'home_navigation_bar_small_devices.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeNavigationBarCubit>(),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return HomeNavigationBarSmallDevices();
          } else {
            return HomeNavigationBarLargeDevices();
          }
        },
      ),
    );
  }
}
