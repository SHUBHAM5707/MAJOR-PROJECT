import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class SkTermsAndConditionCheck extends StatelessWidget {
  const SkTermsAndConditionCheck({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24,height: 24, child: Checkbox(value: true,onChanged: (value){})),
        const SizedBox(height: SkSizes.spaceBtwIteam),
        Text.rich(
          TextSpan(children: [
            TextSpan(text: '${SkTexts.iAgreeTo} ' ,style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${SkTexts.privacyPolicy} ' ,style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? SkColors.white : SkColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? SkColors.white : SkColors.primary
            )),
            TextSpan(text: '${SkTexts.and} ' ,style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${SkTexts.termOfUse} ' ,style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? SkColors.white : SkColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? SkColors.white : SkColors.primary
            )),
          ]),
        )
      ],
    );
  }
}