import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: TColors.black),
            ),
            Text(
              '\$256.8',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: TColors.black),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: TColors.black),
            ),
            Text(
              '\$56.8',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: TColors.black),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax Free',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: TColors.black),
            ),
            Text(
              '\$26.8',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: TColors.black),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'order Total',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(color: TColors.black),
            ),
            Text(
              '\$600',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .apply(color: TColors.black),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
      ],
    );
  }
}
