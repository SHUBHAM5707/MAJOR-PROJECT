import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class SkShimmerEffect extends StatelessWidget {
  const SkShimmerEffect({
    super.key,
    required this.width,
    required this.height,
    this.radius = 15,
    this.color,
  });

  final double width, height, radius;
  final Color? color;


  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Shimmer.fromColors(
      baseColor: dark ? Colors.grey[850]! : Colors.grey[300]!,
      highlightColor: dark ? Colors.grey[700]! : Colors.grey,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? (dark ? SkColors.darkGrey : SkColors.white),
          borderRadius:  BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
