import 'package:asebmarket/common/widgets/containers/RoundedImage.dart';
import 'package:asebmarket/features/shop/screens/checkout/checkout.dart';
import 'package:asebmarket/features/shop/screens/home/home.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Iconsax.shop,
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
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: ListView.separated(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (_, index) => Column(
              children: [
                CartItem(context),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: TColors.primary),
                          child: const Icon(
                            Iconsax.minus,
                            size: TSizes.iconXs,
                            color: TColors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color.fromARGB(255, 189, 191, 202)),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .apply(color: TColors.black),
                                ),
                              )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: TColors.primary),
                          child: Center(
                            child: const Icon(
                              Iconsax.add,
                              size: TSizes.iconXs,
                              color: TColors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      '256 birr',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(color: TColors.black),
                    )
                  ],
                ),
              ],
            ),
            separatorBuilder: (_, __) => const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
        child: ElevatedButton(
          onPressed: () {
            Get.to(() => const CheckoutScreen());
          },
          child: const Text('Checkout \$256.0'),
        ),
      ),
    );
  }

  Row CartItem(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          width: 80,
          height: 60,
          imageUrl: TImages.productImage1,
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.dark
              : TColors.white,
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
}
