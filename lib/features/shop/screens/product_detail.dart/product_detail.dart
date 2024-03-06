import 'package:asebmarket/common/widgets/containers/RoundedImage.dart';
import 'package:asebmarket/common/widgets/containers/curved_edge_widget.dart';
import 'package:asebmarket/features/shop/screens/cart/cart.dart';
import 'package:asebmarket/features/shop/screens/home/home.dart';
import 'package:asebmarket/features/shop/screens/product_detail.dart/widgets/product_attribute.dart';
import 'package:asebmarket/features/shop/screens/product_detail.dart/widgets/product_image_slider.dart';
import 'package:asebmarket/features/shop/screens/product_detail.dart/widgets/product_meta_data.dart';
import 'package:asebmarket/features/shop/screens/product_detail.dart/widgets/rating_and_share.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shoes',
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
      body: SingleChildScrollView(
        child: Column(children: [
          ProductImageSlider(dark: dark),

          ///Product Detail
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///- Rating and share Button
                const RatingAndSharingWidget(),
                const ProductMetaData(),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Green Nike Sport Shirt',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: TColors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Status Stoke',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: TColors.black),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text('Nike'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Iconsax.verify5,
                      color: TColors.primary,
                      size: TSizes.iconXs,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProductAttributes()
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 92, 93, 99)),
                child: const Icon(
                  Iconsax.minus,
                  size: TSizes.iconXs,
                  color: TColors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text('2',
                  style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: TColors.black,
                      )),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: TColors.black),
                child: const Icon(
                  Iconsax.add,
                  size: TSizes.iconXs,
                  color: TColors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => const CartScreen());
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text('Add to Cart')),
          ),
        ]),
      ),
    );
  }
}
