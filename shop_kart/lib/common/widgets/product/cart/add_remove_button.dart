import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../icons/sk_circular_icon.dart';

class SkProductQuantityWithAddAndRemoveButton extends StatelessWidget {
  const SkProductQuantityWithAddAndRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SkCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: SkSizes.md,
          color: SKHelperFunction.isDarkMode(context) ? SkColors.white : SkColors.black,
          backgroundColor: SKHelperFunction.isDarkMode(context) ? SkColors.darkenGrey : SkColors.light,
        ),
        const SizedBox(width: SkSizes.spaceBtwIteam),
        Text('2',style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(width: SkSizes.spaceBtwIteam),

        const SkCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: SkSizes.md,
          color: SkColors.white,
          backgroundColor: SkColors.primary,
        ),
      ],
    );
  }
}
