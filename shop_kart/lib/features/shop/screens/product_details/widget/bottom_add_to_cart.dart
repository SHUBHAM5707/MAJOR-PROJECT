import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/icons/sk_circular_icon.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class SKBottomAddToCart extends StatelessWidget {
  const SKBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SkSizes.defaultSpace, vertical: SkSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? SkColors.darkenGrey : SkColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(SkSizes.cardRadiusLg),
            topRight: Radius.circular(SkSizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const SkCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: SkColors.grey,
                width: 40,
                height: 40,
                color: SkColors.white,
              ),
              const SizedBox(width: SkSizes.spaceBtwIteam),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: SkSizes.spaceBtwIteam),
              const SkCircularIcon(
                icon: Iconsax.add,
                backgroundColor: SkColors.black,
                width: 40,
                height: 40,
                color: SkColors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(SkSizes.md),
              backgroundColor: SkColors.black,
              side: const BorderSide(color: SkColors.black)
            ),
            child: const Text('Add to Kart'),
          )
        ],
      ),
    )
    ;
  }
}
