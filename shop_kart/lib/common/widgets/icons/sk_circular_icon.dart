import 'package:flutter/material.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';
import '../../../utils/constants/colors.dart';

class SkCircularIcon extends StatelessWidget {
  const SkCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = SkSizes.ld,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : SKHelperFunction.isDarkMode(context)
                ? SkColors.black.withOpacity(0.9)
                : SkColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
            size: size,
          )),
    );
  }
}
