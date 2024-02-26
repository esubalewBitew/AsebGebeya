import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer(
      {super.key,
      required this.text,
      this.icon,
      this.textColor = TColors.black,
      this.showBackground = true,
      this.showBorder = true});

  final String text;
  final IconData? icon;
  final Color textColor;
  final bool showBackground, showBorder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: TColors.grey)),
        child: Row(
          children: [
            const Icon(
              Iconsax.search_normal,
              color: TColors.darkGrey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: textColor),
            )
          ],
        ),
      ),
    );
  }
}
