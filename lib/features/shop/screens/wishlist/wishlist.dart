import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:asebmarket/features/shop/screens/home/home.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const THomeAppbar(
        title: 'Wishlist',
        textColor: TColors.black,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SectionHeader(
              title: 'Your Loved one',
              showActionButton: true,
              onPressed: () {}),
          GridView.builder(
              itemCount: 20,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0),
              itemBuilder: (_, index) => const ProductCardVertical()),
        ]),
      ),
    );
  }
}
