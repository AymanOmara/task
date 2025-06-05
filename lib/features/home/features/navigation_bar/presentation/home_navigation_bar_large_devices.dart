import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/ui/theme/colors.dart';
import 'package:task/core/ui/theme/theme_utils.dart';
import 'package:task/features/home/features/navigation_bar/presentation/services_widget.dart';

class HomeNavigationBarLargeDevices extends StatelessWidget {
  const HomeNavigationBarLargeDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 18),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: charcoal)),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SvgPicture.asset("assets/images/logo.svg"),
            Spacer(),
            ServicesWidget(),
            SizedBox(width: 24),
            Row(
              spacing: 12,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  color: darkGray,
                  width: 2,
                ),
                SvgPicture.asset("assets/images/ic_settings.svg"),
                SvgPicture.asset("assets/images/ic_notifications.svg"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  color: darkGray,
                  width: 2,
                ),
                Image.asset("assets/images/profile_picture.png"),
                Row(
                  children: [
                    Text("Ayman Omara", style: theme.agP2Regular),
                    SizedBox(width: 4),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/ic_arrow_down.svg",
                        width: 12,
                        height: 7,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
