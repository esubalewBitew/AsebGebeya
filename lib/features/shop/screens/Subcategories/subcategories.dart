import 'package:asebmarket/common/widgets/containers/RoundedContainer.dart';
import 'package:asebmarket/common/widgets/containers/RoundedImage.dart';
import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundedImage(
                width: MediaQuery.of(context).size.width,
                height: 200,
                imageUrl: TImages.productImage10,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.dark
                    : TColors.white,
                borderColor: TColors.primary,
                padding: const EdgeInsets.all(TSizes.sm),
                showBorder: false,
              ),
              const SectionHeader(
                title: 'Sports shirt',
                buttonTitle: 'view all',
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (context, index) =>
                      const ProductCardHorizontal(),
                  itemCount: 6,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: TColors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Container(
                  child: RoundedImage(
                    width: 150,
                    height: 150,
                    imageUrl: TImages.productImage1,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.dark
                        : TColors.white,
                    borderColor: TColors.primary,
                    padding: const EdgeInsets.all(TSizes.sm),
                    showBorder: false,
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
            //  AspectRatio(
            //     aspectRatio: 1, // Maintain aspect ratio of the image
            //     child: child),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10),
            child: Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Green Nike Air Shoes',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
