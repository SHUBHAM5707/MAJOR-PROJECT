import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';

class SkSocialButtons extends StatelessWidget {
  const SkSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: SkColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: SkSizes.iconMd,
              height: SkSizes.iconMd,
              image: AssetImage(SkImages.google),
            ),
          ),
        ),
        const SizedBox(width: SkSizes.spaceBtwIteam),
        Container(
          decoration: BoxDecoration(border: Border.all(color: SkColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
              width: SkSizes.iconMd,
              height: SkSizes.iconMd,
              image: AssetImage(SkImages.facebook),
            ),
          ),
        ),
        const SizedBox(width: SkSizes.spaceBtwIteam),
      ],
    );
  }
}
