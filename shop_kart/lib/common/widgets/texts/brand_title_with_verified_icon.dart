import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/texts/brand_title_text.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';

class SKBrandTitleWithVerifiedIcon extends StatelessWidget {
  const SKBrandTitleWithVerifiedIcon(
      {super.key,
      this.textColor,
      this.iconColor = SkColors.primary,
      required this.title,
      this.maxLine = 1,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSizes.small,
  });

  final Color? textColor, iconColor;
  final String title;
  final int maxLine;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child:SkBrandTitleText(
              title: title,
              color: textColor,
              maxLine: maxLine,
              textAlign: textAlign,
              brandTextSize: brandTextSize,
            ),
        ),
        const SizedBox(width: SkSizes.xs),
        Icon(Iconsax.verify5,color: iconColor,size: SkSizes.iconXs,)
      ],

    );
  }
}
