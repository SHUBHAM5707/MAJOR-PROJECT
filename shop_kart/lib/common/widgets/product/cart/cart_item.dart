import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/rounded_images.dart';
import '../../texts/brand_title_with_verified_icon.dart';
import '../../texts/product_title_text.dart';

class SkCartItem extends StatelessWidget {
  const SkCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///images
        SkRoundedImage(
          imageUrl: SkImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(SkSizes.sm),
          backgroundColor: SKHelperFunction.isDarkMode(context) ? SkColors.dark : SkColors.light,
        ),
        const SizedBox(height: SkSizes.spaceBtwSections),

        ///title,price,size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SKBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: SkProductTitleText(title: 'Green sports shoes',maxLines: 1)),
              ///attribute
              Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: 'color ',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'green ',style: Theme.of(context).textTheme.bodyLarge),
                      TextSpan(text: 'size ',style: Theme.of(context).textTheme.bodySmall),
                      TextSpan(text: 'UK 08 ',style: Theme.of(context).textTheme.bodyLarge),
                    ]
                ),
              )

            ],
          ),
        )
      ],
    );
  }
}
