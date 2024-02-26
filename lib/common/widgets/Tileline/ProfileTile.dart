import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({
    super.key,
    // this.onPressed,
    // this.textColor,
    // this.buttonTitle = '',
    // required this.title,
    // this.showActionButton = true,
  });

  // final Color? textColor;
  // final bool showActionButton;
  // final String title;
  // final String buttonTitle;
  // final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(TImages.user),
      ),
      title: const Text(
        'Esubalew',
        style: TextStyle(color: TColors.white),
      ),
      subtitle: const Text('user@example.com',
          style: TextStyle(color: TColors.white)),
      trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          )),
      onTap: () {
        // Handle onTap action
      },
    );
  }
}
