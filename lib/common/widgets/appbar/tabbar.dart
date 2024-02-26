import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/device/device_utility.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  const TTabBar(
      {super.key,
      required this.tabs,
      this.isScrollable,
      this.indicatorColor,
      this.unselectedLabelColor});

  final List<Widget> tabs;
  final bool? isScrollable;
  final Color? indicatorColor;
  final Color? unselectedLabelColor;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: TColors.primary,
          unselectedLabelColor: TColors.darkGrey),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
