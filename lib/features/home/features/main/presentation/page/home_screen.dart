import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/home/features/main/business_logic/home_cubit.dart';
import 'package:task/features/home/features/main/presentation/widgets/home_filter_widget.dart';
import 'package:task/features/home/features/navigation_bar/presentation/home_navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = BlocProvider.of(context);
        return Scaffold(
          body: SafeArea(
            child: Column(children: [HomeNavigationBar(), HomeFilterWidget()]),
          ),
        );
      },
    );
  }
}
