import 'package:asebmarket/features/shop/screens/Subcategories/subcategories.dart';
import 'package:asebmarket/features/shop/screens/product_detail.dart/product_detail.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const SubCategories()),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: const Center(
                  child: Image(
                      image: AssetImage(TImages.shoeIcon),
                      fit: BoxFit.cover,
                      color: TColors.black)),
            ),
            const SizedBox(
              height: 10,
            ),
            //Text
            SizedBox(
              width: 55,
              child: Text(
                'Shoes category',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
