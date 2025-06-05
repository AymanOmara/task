import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/ui/theme/colors.dart';

class HomeNavigationBarSmallDevices extends StatelessWidget {
  const HomeNavigationBarSmallDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: charcoal)),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SvgPicture.asset("assets/images/ic_menu.svg"),
            SizedBox(width: 16),
            SvgPicture.asset("assets/images/logo.svg"),
            Spacer(),
            Row(
              spacing: 12,
              children: [
                SvgPicture.asset("assets/images/ic_settings.svg"),
                SvgPicture.asset("assets/images/ic_notifications.svg"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  color: darkGray,
                  width: 2,
                ),
                Image.asset("assets/images/profile_picture.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
