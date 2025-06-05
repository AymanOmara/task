import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/di/injector.dart';
import 'package:task/features/home/features/main/business_logic/home_cubit.dart';
import 'package:task/features/home/features/main/presentation/page/home_screen.dart';

import 'app_routes.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<HomeCubit>(),
                child: HomeScreen(),
              ),
        );
      default:
        return null;
    }
  }
}
