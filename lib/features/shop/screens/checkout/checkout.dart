import 'package:asebmarket/common/widgets/containers/RoundedContainer.dart';
import 'package:asebmarket/common/widgets/containers/RoundedImage.dart';
import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/features/shop/screens/checkout/billing_address_section.dart';
import 'package:asebmarket/features/shop/screens/checkout/billing_payment_section.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Iconsax.check,
              color: TColors.black,
              size: TSizes.iconMd,
            ),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView.separated(
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (_, index) => Column(
                      children: [
                        CartItem(context),
                        const SizedBox(
                          height: 0,
                        ),
                      ],
                    ),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                  ),
                ),

                //  Container(
                //     width: 180,
                //     height: 60,
                //     decoration: BoxDecoration(
                //       color: Colors.red,
                //       borderRadius: BorderRadius.circular(10),
                //       border: Border.all(color: TColors.darkGrey),
                //     ),
                //     child: ClipRRect(
                //       borderRadius: BorderRadius.circular(10),
                //       child: Row(
                //         children: [
                //           TextFormField(
                //             decoration: const InputDecoration(
                //                 hintText: 'Have a promo code? Enter here'),
                //           )
                //         ],
                //       ),
                //       //  AspectRatio(
                //       //     aspectRatio: 1, // Maintain aspect ratio of the image
                //       //     child: child),
                //     ),
                //   )
                // ,

                const CouponCard(),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 10,
                  // height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: TColors.darkGrey),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        BillingPaymentSection(),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        const Divider(),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        BillingAddressSection(),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        SectionHeader(
                          title: 'Shipping Address',
                          buttonTitle: 'Change',
                          textColor: TColors.black,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Esubalew Bitew'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Iconsax.mobile,
                                size: TSizes.iconSm,
                                color: TColors.black,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Addis Ababa',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(color: TColors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                Iconsax.location,
                                size: TSizes.iconSm,
                                color: TColors.black,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Ethiopia',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(color: TColors.black),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => {});
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }
}

class CouponCard extends StatelessWidget {
  const CouponCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 10,
        // height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: TColors.darkGrey),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.only(
                top: TSizes.sm,
                bottom: TSizes.sm,
                right: TSizes.sm,
                left: TSizes.md),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Have a promo code? Enter here',
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(color: TColors.black)),
                  ),
                ),
                SizedBox(
                  width: 90,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          side: BorderSide(color: Colors.grey.withOpacity(0.1)),
                          foregroundColor: THelperFunctions.isDarkMode(context)
                              ? TColors.white.withOpacity(0.5)
                              : TColors.dark.withOpacity(0.5)),
                      onPressed: () {},
                      child: const Text('Apply')),
                )
              ],
            ),
          ),
        ));
  }
}

Row CartItem(BuildContext context) {
  return Row(
    children: [
      RoundedImage(
        width: 80,
        height: 60,
        imageUrl: TImages.productImage1,
        backgroundColor:
            THelperFunctions.isDarkMode(context) ? TColors.dark : TColors.white,
        borderColor: TColors.primary,
        padding: const EdgeInsets.all(TSizes.sm),
      ),
      const SizedBox(
        width: TSizes.spaceBtwItems,
      ),

      ///Title,Price and Size
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Nike',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: TColors.black),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Iconsax.verify5,
                color: TColors.primary,
                size: TSizes.iconXs,
              )
            ],
          ),
          Text(
            'Black Sport Shoes',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .apply(color: TColors.black),
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
            TextSpan(
                text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
          ]))
        ],
      )
    ],
  );
}
