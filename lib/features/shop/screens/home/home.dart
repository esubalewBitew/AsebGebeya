import 'package:asebmarket/common/widgets/appbar/appbar.dart';
import 'package:asebmarket/common/widgets/containers/CategoryComponent.dart';
import 'package:asebmarket/common/widgets/containers/RoundedContainer.dart';
import 'package:asebmarket/common/widgets/containers/search_container.dart';
import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:asebmarket/features/shop/screens/cart/cart.dart';
import 'package:asebmarket/features/shop/screens/home/widgets/custom_shapes/containers/curve_edge_widget.dart';
import 'package:asebmarket/features/shop/screens/home/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:asebmarket/features/shop/screens/home/widgets/promotioncard.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/constants/text_strings.dart';
import 'package:asebmarket/utils/device/device_utility.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    //double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TPrimaryheaderContainer(
              child: Column(
                children: [
                  const THomeAppbar(),
                  const TSearchContainer(
                    text: 'Search in store',
                    showBackground: true,
                    showBorder: true,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        Row(children: [
                          Text(
                            'Popular Category',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .apply(color: TColors.white),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          TextButton(onPressed: () {}, child: const Text(''))
                        ])
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 12,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return TVerticalImageText();
                        }),
                  )
                ],
              ),
            ),
            // GridView.builder(
            //   itemCount: 6,
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       mainAxisExtent: 10,
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10),
            //   itemBuilder: (_, index) => Container(
            //     // height: 200,
            //     color: Colors.red, // Set color for visualization
            //     // You can add child widgets if needed
            //   ),
            // ),
            // const ProductCardVertical()
            Padding(
                padding: const EdgeInsets.all(0.0),
                child: CarouselSlider(items: [
                  PromotionRoundedCard(
                    imageUrl: TImages.banner8,
                  ),
                  PromotionRoundedCard(
                    imageUrl: TImages.banner2,
                  ),
                  PromotionRoundedCard(
                    imageUrl: TImages.banner3,
                  ),
                  PromotionRoundedCard(
                    imageUrl: TImages.banner4,
                  ),
                  PromotionRoundedCard(
                    imageUrl: TImages.banner5,
                  ),
                  PromotionRoundedCard(
                    imageUrl: TImages.banner6,
                  )
                ], options: CarouselOptions(viewportFraction: 1))),
            SectionHeader(
              title: 'Popular Product (23)',
              onPressed: () {
                Get.to(() => const CartScreen());
              },
            ),
            GridView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0),
                itemBuilder: (_, index) => ProductCardVertical(
                      image: TImages.productImage20,
                    )),
          ],
        ),
      ),
    );
  }
}

class THomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const THomeAppbar(
      {Key? key, this.title = 'Esubalew Bitew', this.textColor = TColors.white})
      : super(key: key);
  final String? title;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: textColor),
          )
        ],
      ),
      actions: const [
        Icon(
          Iconsax.shop_add,
          size: TSizes.iconMd,
          color: TColors.white,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
