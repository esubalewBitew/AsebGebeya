import 'package:asebmarket/common/widgets/header/section_header.dart';
import 'package:asebmarket/features/shop/screens/checkout/checkout.dart';
import 'package:asebmarket/utils/constants/colors.dart';
import 'package:asebmarket/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: TColors.grey,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SectionHeader(
                        title: 'Variation',
                        showActionButton: false,
                      ),
                      const SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),

                      ///Actual price
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('price',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .apply(
                                            color: TColors.black,
                                          )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '\$25',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .apply(
                                            decoration:
                                                TextDecoration.lineThrough),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '\$20',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .apply(decoration: TextDecoration.none),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text('stock',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .apply(
                                            color: TColors.black,
                                          )),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'in ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .apply(
                                            decoration:
                                                TextDecoration.lineThrough),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Stock',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .apply(decoration: TextDecoration.none),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                      'This is the description of the Product bind it can go up to 4',
                      style: Theme.of(context).textTheme.labelSmall!.apply(
                            color: TColors.black,
                          ))
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SectionHeader(
            title: 'Colors',
            buttonTitle: 'View all',
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ChoiceChip(
                  label: Text('Green'),
                  selected: true,
                  onSelected: (value) {},
                  labelStyle: TextStyle(color: true ? TColors.white : null)),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                  label: Text('Blue'),
                  selected: true,
                  onSelected: (value) {},
                  labelStyle: TextStyle(color: true ? TColors.white : null)),
              const SizedBox(
                width: 10,
              ),
              Container(
                // Set background color to red
                child: ChoiceChip(
                  label: Text('Red'),
                  selected: true,
                  onSelected: (value) {},
                  backgroundColor: Colors.red,
                  labelStyle: TextStyle(color: true ? Colors.white : null),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const SectionHeader(
            title: 'Sizes',
            buttonTitle: 'View all',
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ChoiceChip(
                  label: Text('EU 34'),
                  selected: true,
                  onSelected: (value) {},
                  labelStyle: TextStyle(color: true ? TColors.white : null)),
              const SizedBox(
                width: 10,
              ),
              ChoiceChip(
                  label: Text('EU 36'),
                  selected: true,
                  onSelected: (value) {},
                  labelStyle: TextStyle(color: true ? TColors.white : null)),
              const SizedBox(
                width: 10,
              ),
              Container(
                // Set background color to red
                child: ChoiceChip(
                  label: Text('EU 32'),
                  selected: true,
                  onSelected: (value) {},
                  backgroundColor: Colors.red,
                  labelStyle: TextStyle(color: true ? Colors.white : null),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const CheckoutScreen());
                },
                child: const Text('Checkout')),
          ),
          const SizedBox(
            height: 10,
          ),
          const SectionHeader(
            title: 'Description',
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Product Description here',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.black),
          )
        ],
      ),
    );
  }
}
