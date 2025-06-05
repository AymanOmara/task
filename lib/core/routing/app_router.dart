import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/page/home_screen.dart';

import 'app_routes.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return null;
    }
  }
}
