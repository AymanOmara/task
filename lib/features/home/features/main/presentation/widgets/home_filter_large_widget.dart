import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task/core/ui/theme/colors.dart';
import 'package:task/core/ui/theme/theme_utils.dart';

class HomeFilterLargeWidget extends StatelessWidget {
  const HomeFilterLargeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 24),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Text("items".tr, style: theme.agH5Regular),
            Spacer(),
            Row(
              spacing: 12,
              children: [
                SvgPicture.asset("assets/images/ic_filter.svg"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  color: darkGray,
                  width: 2,
                ),
                MaterialButton(
                  onPressed: () {},
                  color: amberAccent,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/images/ic_add.svg"),
                      SizedBox(width: 8),
                      Text("add_new_item".tr, style: theme.agButtonLinkMedium),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
