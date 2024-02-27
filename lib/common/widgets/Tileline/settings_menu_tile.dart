import 'package:asebmarket/features/shop/screens/cart/cart.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      this.onPressed});

  final String title;
  final String subTitle;
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const CartScreen()),
      child: ListTile(
          leading: Icon(icon, size: 28, color: TColors.primary),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          subtitle: Text(
            subTitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.edit,
                color: TColors.black,
              ))),
    );
  }
}
