import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

import 'package:shop_kart/common/style/shadows.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/common/widgets/images/rounded_images.dart';
import 'package:shop_kart/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:shop_kart/common/widgets/texts/product_title_text.dart';
import 'package:shop_kart/features/shop/screens/product_details/product_details.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../features/shop/controlles/product_controller.dart';
import '../../../../features/shop/models/product_model.dart';
import '../../../../utils/constants/enums.dart';
import '../../icons/sk_circular_icon.dart';


class SkProductCardVertical extends StatelessWidget {
  const SkProductCardVertical({super.key, required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    final controller = ProductController.instance;
    final salePercentage = controller.calculateSalePercentage(product.price, product.salePrice);
    final dark = SKHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(()=> ProductDetail(product: product)),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [SkShadowStyle.verticalProductShow],
          borderRadius: BorderRadius.circular(SkSizes.productImageRadius),
          color: dark ? SkColors.darkGrey : SkColors.white,
        ),
        child: Column(
          children: [
            ///thumbnail,wishlist,button,discount
            SkRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(SkSizes.sm),
              backgroundColor: dark ? SkColors.dark : SkColors.light,
              child: Stack(
                children: [
                  ///thumbnail img
                  SkRoundedImage(
                      imageUrl: product.thumbnail, applyImageRadius: true,isNetworkImage: true,),
      
                  ///sale tag
                  Positioned(
                    top: 12,
                    child: SkRoundedContainer(
                      radius: SkSizes.sm,
                      backgroundColor: SkColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: SkSizes.sm, vertical: SkSizes.xs),
                      child: Text('$salePercentage%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SkColors.black)),
                    ),
                  ),
      
                  ///fav icon
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: SkCircularIcon(icon: Iconsax.heart5, color: Colors.red)
                  )
                ],
              ),
            ),
            const SizedBox(height: SkSizes.spaceBtwIteam / 2),
      
            ///details
            Padding(
              padding:  const EdgeInsets.only(left: SkSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SkProductTitleText(title: product.title, smallSize: true),
                  const SizedBox(height: SkSizes.spaceBtwIteam / 2),
                  SKBrandTitleWithVerifiedIcon(title: product.brand!.name)
                ],
              ),
            ),


            //spacer() use is to keep height of each box same in case 2 or more line heading
            const Spacer(),
            ///price row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                Flexible(
                  child: Column(
                    children: [
                      if(product.productType == ProductType.single.toString() && product.salePrice > 0)
                      Padding(
                        padding: const EdgeInsets.only(left: SkSizes.sm),
                        child: Text(
                          product.price.toString(),
                          style: Theme.of(context).textTheme.labelMedium!.apply(decoration: TextDecoration.lineThrough),
                        )
                      ),
                    ],
                  ),
                ),

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
    );
  }
}


