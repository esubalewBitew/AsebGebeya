import 'package:asebmarket/common/widgets/Tileline/ProfileTile.dart';
import 'package:asebmarket/common/widgets/Tileline/settings_menu_tile.dart';
import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/features/shop/screens/cart/cart.dart';
import 'package:asebmarket/features/shop/screens/home/home.dart';
import 'package:asebmarket/features/shop/screens/home/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryheaderContainer(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  THomeAppbar(
                    title: 'Account',
                  ),

                  ///User Profile Card
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: ProfileTile(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.defaultSpace,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  const SectionHeader(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const SettingsMenuTile(
                      title: 'My Address',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.safe_home),
                  const SettingsMenuTile(
                      title: 'My Coupon',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.discount_shape),
                  const SettingsMenuTile(
                      title: 'My Order',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.bag_tick),
                  const SettingsMenuTile(
                      title: 'Bank Account',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.bank),
                  const SettingsMenuTile(
                      title: 'Notification',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.notification),
                  const SettingsMenuTile(
                      title: 'Account Privacy',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.security_card),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const SectionHeader(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  const SettingsMenuTile(
                      title: 'Load Data',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.document_upload),
                  const SettingsMenuTile(
                      title: 'GeoLocation',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.security_card),
                  const SettingsMenuTile(
                      title: 'HD Image Location',
                      subTitle: 'Set shopping delivery Address',
                      icon: Iconsax.security_card),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
