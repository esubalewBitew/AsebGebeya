import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/device/device_utility.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    Key? key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackarrow = true,
  }) : super(key: key);

  final Widget? title;
  final bool showBackarrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10
          // horizontal: TSizes.defaultSpace,
          ),
      child: AppBar(
        automaticallyImplyLeading: false,
        // leading: showBackarrow
        //     ? IconButton(
        //         onPressed: () => Get.back(),
        //         icon: const Icon(Iconsax.arrow_left),
        //       )
        //     : IconButton(
        //         onPressed: () {},
        //         icon: Icon(leadingIcon),
        //       ),
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
