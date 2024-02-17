import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shape/containers/rounded_container.dart';

class SkCouponCode extends StatelessWidget {
  const SkCouponCode({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);

    return SkRoundedContainer(
        showBorder: true,
        backgroundColor: dark ? SkColors.dark : SkColors.white,
        padding: const EdgeInsets.only(top: SkSizes.sm,bottom: SkSizes.sm,right: SkSizes.sm,left: SkSizes.md),
        child: Row(
          children: [
            Flexible(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Promo Code?',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                )
            ),

            ///button
            SizedBox(
              width: 80,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark ? SkColors.white.withOpacity(0.5) : SkColors.dark.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    side: BorderSide(color: Colors.grey.withOpacity(0.1))
                ),
                child: const Text('Apply'),
              ),
            ),


          ],
        )
    );
  }
}
