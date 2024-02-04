import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class SkSearchContainer extends StatelessWidget {
  const SkSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: SkSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
            width: SkDeviceUtils.getScreenWidth(context),
            padding: const EdgeInsets.all(SkSizes.md),
            decoration: BoxDecoration(
                color: showBackground
                    ? dark
                        ? SkColors.dark
                        : SkColors.light
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(SkSizes.cardRadiusLg),
                border: showBorder ? Border.all(color: SkColors.grey) : null),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: SkColors.darkGrey,
                ),
                const SizedBox(
                  width: SkSizes.spaceBtwIteam,
                ),
                Text(text, style: Theme.of(context).textTheme.bodySmall),
              ],
            )),
      ),
    );
  }
}
