import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/common/widgets/texts/product_price_text.dart';
import 'package:shop_kart/common/widgets/texts/product_title_text.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';

class SkProductAttributes extends StatelessWidget {
  const SkProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return  Column(
      children: [
        ///selected Attribute pricing & decip
        SkRoundedContainer(
          padding: const EdgeInsets.all(SkSizes.md),
          backgroundColor: dark ? SkColors.darkenGrey : SkColors.grey,
          child: Column(
            children: [
              ///Title , Price and Stock status
              Row(
                children: [
                  const SkSectionHeading(title: 'Variation',showActionButton: false),
                  const SizedBox(width: SkSizes.spaceBtwIteam),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SkProductTitleText(title: 'Price :',smallSize: true),
                          ///actual price
                          Text(
                            '1599',
                            style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: SkSizes.spaceBtwIteam),

                          ///sale price
                          const SkProductPriceText(price: '1299'),
                        ],
                      ),

                      ///stock
                      Row(
                        children: [
                          const SkProductTitleText(title: 'Stock : ',smallSize: true),
                          Text('In Stock ',style: Theme.of(context).textTheme.titleMedium),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              ///variation and  Description
              const SkProductTitleText(
                title: 'This is an discription of the product that go upt o 4 lines ',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam),

        ///attribute
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SkSectionHeading(title: 'Colors'),
            const SizedBox(height: SkSizes.spaceBtwIteam / 2),
            Wrap(
              spacing: 8,
              children: [
                SkChoiceChip(text: 'Green', selected: true, onSelected: (value) {}),
                SkChoiceChip(text: 'Blue', selected: false,onSelected: (value) {}),
                SkChoiceChip(text: 'Red', selected: false,onSelected: (value) {}),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SkSectionHeading(title: 'Sizes'),
            const SizedBox(height: SkSizes.spaceBtwIteam / 2),
            Wrap(
              spacing: 8,
              children: [
                SkChoiceChip(text: 'UK 6', selected: true,onSelected: (value) {}),
                SkChoiceChip(text: 'UK 7', selected: false,onSelected: (value) {}),
                SkChoiceChip(text: 'UK 8', selected: false,onSelected: (value) {}),
              ],
            )
          ],
        )
      ],
    );
  }
}

