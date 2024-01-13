import 'package:flutter/material.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';
import '../../../utils/constants/colors.dart';

class SkFormDivider extends StatelessWidget {
  const SkFormDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? SkColors.darkGrey: SkColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? SkColors.darkGrey: SkColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}
