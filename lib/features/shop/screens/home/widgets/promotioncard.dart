import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class PromotionRoundedCard extends StatelessWidget {
  const PromotionRoundedCard({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: GestureDetector(
        child: Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(TSizes.md)),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(21)),
              child: Image(image: AssetImage(imageUrl), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
