import 'package:asebmarket/common/widgets/appbar/tabbar.dart';
import 'package:asebmarket/common/widgets/containers/RoundedContainer.dart';
import 'package:asebmarket/common/widgets/containers/search_container.dart';
import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/common/widgets/product/product_cards/product_card_vertical.dart';
import 'package:asebmarket/features/shop/screens/home/home.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/image_strings.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:asebmarket/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: const THomeAppbar(
          title: 'Store',
          textColor: TColors.black,
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : TColors.white,
                    expandedHeight: 390,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: TSizes.defaultSpace),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          const TSearchContainer(
                              text: 'Search in Store',
                              showBorder: true,
                              textColor: TColors.black),
                          const SizedBox(
                            height: TSizes.spaceBtwSections,
                          ),

                          ///featured Brands
                          SectionHeader(
                              title: 'Featured Brands',
                              showActionButton: true,
                              onPressed: () {}),
                          const SizedBox(
                            height: TSizes.spaceBtwItems / 1.5,
                          ),

                          GridView.builder(
                              itemCount: 2,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 10.0,
                                      crossAxisSpacing: 10.0),
                              itemBuilder: (_, index) =>
                                  const ProductCardVertical()),
                        ],
                      ),
                    ),
                    bottom: const TTabBar(
                      tabs: [
                        Tab(
                          child: Text('Sport'),
                        ),
                        Tab(
                          child: Text('Furniture'),
                        ),
                        Tab(
                          child: Text('Electronics'),
                        ),
                        Tab(
                          child: Text('Clothes'),
                        ),
                        Tab(
                          child: Text('Cosmetics'),
                        ),
                      ],
                      isScrollable: true,
                      indicatorColor: TColors.primary,
                      unselectedLabelColor: TColors.darkGrey,
                    )

                    // TabBar(
                    //   isScrollable: true,
                    //   indicatorColor: TColors.primary,
                    //   unselectedLabelColor: TColors.darkGrey,
                    //   labelColor: THelperFunctions.isDarkMode(context)
                    //       ? TColors.white
                    //       : TColors.primary,

                    // ),
                    ),
              ];
            },
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: Column(
                        children: [
                          GridView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 10.0,
                                      crossAxisSpacing: 10.0),
                              itemBuilder: (_, index) =>
                                  const ProductCardVertical()),
                          const SectionHeader(
                            title: 'You might Like',
                            buttonTitle: 'View All',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GridView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 10.0,
                                      crossAxisSpacing: 10.0),
                              itemBuilder: (_, index) =>
                                  const ProductCardVertical()),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
