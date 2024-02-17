import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shape/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_with_verified_icon.dart';

class SkBrandCard extends StatelessWidget {
  const SkBrandCard({
    super.key, required this.showBorder, this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SkRoundedContainer(
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(SkSizes.sm),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///icon
            Flexible(
              child: SkCircularImage(
                isNetworkImage: false,
                image: SkImages.clothIcon,
                backgroundColor: Colors.transparent,
                overlayColor:
                SKHelperFunction.isDarkMode(
                    context)
                    ? SkColors.white
                    : SkColors.black,
              ),
            ),
            const SizedBox(
                height: SkSizes.spaceBtwIteam / 2),

            ///text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  const SKBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSize: TextSizes.large),
                  Text(
                    '295 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
