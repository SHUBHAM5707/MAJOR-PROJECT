import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product/cart/cart_menu_icart.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_string.dart';

class SkHomeAppBar extends StatelessWidget {
  const SkHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SkAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(SkTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: SkColors.grey)),
          Text(SkTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: SkColors.white)),
        ],
      ),
      actions: [
        SkCartCounterIcon(
            onPressed: () {}, iconColor: SkColors.white)
      ],
    );
  }
}
