import 'package:flutter/material.dart';

import 'home_filter_large_widget.dart';
import 'home_filter_small_widget.dart';

class HomeFilterWidget extends StatelessWidget {
  const HomeFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return HomeFilterSmallWidget();
        } else {
          return HomeFilterLargeWidget();
        }
      },
    );
  }
}
