import 'package:flutter/material.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';

class  SkLoginHeader extends StatelessWidget {
  const SkLoginHeader({
    super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 200,
          image: AssetImage(dark ? SkImages.darkAppLogo :  SkImages.lightAppLogo),
        ),
        Text(SkTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: SkSizes.sm,),
        Text(SkTexts.loginSubTitle, style: Theme.of(context).textTheme.headlineSmall),
      ],
    );
  }
}