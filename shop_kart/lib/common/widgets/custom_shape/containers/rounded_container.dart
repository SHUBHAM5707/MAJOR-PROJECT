import 'package:flutter/cupertino.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class SkRoundedContainer extends StatelessWidget {
  const SkRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius  = SkSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = SkColors.white,
    this.backgroundColor = SkColors.white,
    this.padding,
    this.margin
  });

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;



  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}
