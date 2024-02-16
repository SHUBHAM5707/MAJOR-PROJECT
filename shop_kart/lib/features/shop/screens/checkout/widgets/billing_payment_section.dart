import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class SkBillingPaymentSection extends StatelessWidget {
  const SkBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Column(
      children: [
        SkSectionHeading(title: 'Payment Method',buttonTitle: 'Change',onPressed: (){}),
        const SizedBox(height: SkSizes.spaceBtwIteam / 2),
        Row(
          children: [
            SkRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? SkColors.light : SkColors.white,
              padding: const  EdgeInsets.all(SkSizes.sm),
              child: const Image(image: AssetImage(SkImages.payPal),fit: BoxFit.contain),
            ),
            const SizedBox(height: SkSizes.spaceBtwIteam / 2),
            Text('payTm',style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
