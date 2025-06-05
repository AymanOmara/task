import 'package:flutter/material.dart';
import 'package:task/features/home/features/navigation_bar/presentation/home_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [HomeNavigationBar()])),
    );
  }
}
