import 'package:asebmarket/common/widgets/containers/RoundedImage.dart';
import 'package:asebmarket/common/widgets/containers/curved_edge_widget.dart';
import 'package:asebmarket/features/shop/screens/home/home.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Stack(children: [
        const SizedBox(
            height: 400,
            child: Padding(
              padding: EdgeInsets.all(TSizes.productImageRadius + 2),
              child: Center(
                child: Image(image: AssetImage(TImages.productImage1)),
              ),
            )),

        ///image silder
        ///
        Positioned(
            bottom: 30,
            right: 0,
            left: TSizes.defaultSpace,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                itemBuilder: (_, index) => RoundedImage(
                  width: 80,
                  imageUrl: TImages.productImage5,
                  backgroundColor: dark ? TColors.dark : TColors.white,
                  borderColor: TColors.primary,
                  padding: const EdgeInsets.all(TSizes.sm),
                ),
                separatorBuilder: (_, __) => const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
              ),
            )),
      ]),
    );
  }
}
