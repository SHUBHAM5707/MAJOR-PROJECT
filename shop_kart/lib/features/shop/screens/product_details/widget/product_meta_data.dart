import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/icons/sk_circular_icon.dart';
import 'package:shop_kart/common/widgets/images/circular_image.dart';
import 'package:shop_kart/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:shop_kart/common/widgets/texts/product_price_text.dart';
import 'package:shop_kart/common/widgets/texts/product_title_text.dart';
import 'package:shop_kart/utils/constants/enums.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/custom_shape/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SkProductMetaData extends StatelessWidget {
  const SkProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///price & sale price
        Row(
          children: [
            SkRoundedContainer(
              radius: SkSizes.sm,
              backgroundColor: SkColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: SkSizes.sm, vertical: SkSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: SkColors.black)),
            ),
            const SizedBox(width: SkSizes.spaceBtwIteam),


            ///price
            Text('₹1999',style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: SkSizes.spaceBtwIteam),
            const SkProductPriceText(price: '1599',isLarge: true),
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam / 1.5),



        ///Title
        const SkProductTitleText(title: 'Nike Running Sports Shoe '),
        const SizedBox(height: SkSizes.spaceBtwIteam),

        ///stock status
        Row(
          children: [
            const SkProductTitleText(title: 'Status:'),
            const SizedBox(width: SkSizes.spaceBtwIteam),
            Text('In Stock',style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam),

        ///Brand
        Row(
          children: [
            SkCircularImage(
                image: SkImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? SkColors.white : SkColors.black,
            ),
            const SKBrandTitleWithVerifiedIcon(title: 'Nike',brandTextSize: TextSizes.medium),
          ],

        )

      ],
    );
  }
}
