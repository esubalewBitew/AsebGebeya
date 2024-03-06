import 'package:asebmarket/common/widgets/containers/RoundedContainer.dart';
import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Payment Method',
          buttonTitle: 'Change',
          textColor: TColors.black,
          onPressed: () {},
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedContainer(
              width: 20,
              height: 25,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(
                image: AssetImage(TImages.paypal),
                fit: BoxFit.contain,
                height: 35,
                width: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}
