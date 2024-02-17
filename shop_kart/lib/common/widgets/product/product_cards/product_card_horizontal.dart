import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/common/widgets/images/rounded_images.dart';
import 'package:shop_kart/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:shop_kart/common/widgets/texts/product_price_text.dart';
import 'package:shop_kart/common/widgets/texts/product_title_text.dart';
import 'package:shop_kart/utils/constants/image_string.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icons/sk_circular_icon.dart';



class SkProductCardHorizontal extends StatelessWidget {
  const SkProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SkSizes.productImageRadius),
            color: dark ? SkColors.darkGrey : SkColors.softGrey,
        ),
      child: Row(
        children: [
          ///thumbnail
          SkRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(SkSizes.sm),
            backgroundColor: dark ? SkColors.dark : SkColors.light,
            child: Stack(
              children: [
                ///---thumbnail img
                const SizedBox(
                    height:120,
                    width: 120,
                    child: SkRoundedImage(imageUrl: SkImages.productImage1,applyImageRadius: true)
                ),

                ///sale tag
                Positioned(
                  top: 12,
                  child: SkRoundedContainer(
                    radius: SkSizes.sm,
                    backgroundColor: SkColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: SkSizes.sm, vertical: SkSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SkColors.black)),
                  ),
                ),


                ///---favorite icon button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: SkCircularIcon(icon: Iconsax.heart5, color: Colors.red)
                )
              ],
            ),
          ),

          ///detail
          SizedBox(
            width: 170,
            child: Padding(
              padding: const EdgeInsets.only(top: SkSizes.sm,left: SkSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SkProductTitleText(title: 'Green Nike sports T-shirt sdsadas',smallSize: true),
                      SizedBox(height: SkSizes.spaceBtwIteam / 2),
                      SKBrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///pricing
                      const Flexible(child: SkProductPriceText(price: '599.00')),

                      ///add to kart button
                      Container(
                        decoration: const BoxDecoration(
                          color: SkColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(SkSizes.cardRadiusMd),
                            bottomRight:
                            Radius.circular(SkSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: SkSizes.iconLg * 1.2,
                            height: SkSizes.iconLg * 1.2,
                            child: Center(child: Icon(Iconsax.add, color: SkColors.white))
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
    );
  }
}
