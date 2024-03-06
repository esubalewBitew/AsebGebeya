import 'package:asebmarket/common/widgets/containers/RoundedImage.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: TColors.grey),
      ),
      child: ClipRRect(
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
      ),
    );
  }
}
