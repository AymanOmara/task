import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task/core/ui/theme/theme_utils.dart';

class HomeFilterSmallWidget extends StatelessWidget {
  const HomeFilterSmallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("items".tr, style: theme.agH5Regular),
          SvgPicture.asset("assets/images/ic_filter.svg"),
        ],
      ),
    );
  }
}
