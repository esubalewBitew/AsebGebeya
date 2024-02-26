import 'package:asebmarket/common/styles/shadow.dart';
import 'package:asebmarket/common/widgets/containers/RoundedContainer.dart';
import 'package:asebmarket/features/shop/screens/product_detail.dart/product_detail.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/device/device_utility.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key, this.image = TImages.productImage7});
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        // color: Colors.blue,
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [ShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: THelperFunctions.isDarkMode(context)
                ? TColors.darkGrey
                : TColors.white),
        child: Column(children: [
          RoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: TColors.black.withOpacity(1),
            child: Stack(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(image),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    height: 25,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Green Nike Air Shoes',
                            style: Theme.of(context).textTheme.labelLarge,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(children: [
                            Text(
                              'Nike',
                              style: Theme.of(context).textTheme.labelMedium,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Icon(
                              Iconsax.verify5,
                              color: TColors.primary,
                              size: TSizes.iconXs,
                            )
                          ]),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ///price
                              Text(
                                '\$35.5',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: TColors.black,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(
                                            TSizes.cardRadiusMd),
                                        bottomRight: Radius.circular(
                                            TSizes.productImageRadius))),
                                child: const Icon(
                                  Iconsax.add,
                                  color: TColors.white,
                                ),
                              )
                            ],
                          )
                        ]))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
