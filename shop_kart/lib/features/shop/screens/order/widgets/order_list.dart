import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class SkOrderListItems extends StatelessWidget {
  const SkOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: SkSizes.spaceBtwIteam),
      itemBuilder: (_, index) => SkRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(SkSizes.md),
        backgroundColor: dark ? SkColors.dark : SkColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///row
            Row(
              children: [
                ///icon--1
                const Icon(Iconsax.ship),
                const SizedBox(width: SkSizes.spaceBtwIteam / 2),

                ///2 status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(color: SkColors.primary,fontWeightDelta: 1),
                      ),
                      Text('16/02/2024',style: Theme.of(context).textTheme.headlineSmall)
                    ],
                  ),
                ),

                ///icon 3
                IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_34,size: SkSizes.iconSm)),
              ],
            ),
            const SizedBox(height: SkSizes.spaceBtwIteam),

            ///row-2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///icon--1
                      const Icon(Iconsax.tag_24),
                      const SizedBox(width: SkSizes.spaceBtwIteam / 2),

                      ///2 status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#2323]',style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      ///icon--1
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: SkSizes.spaceBtwIteam / 2),

                      ///2 status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('16/2/24',style: Theme.of(context).textTheme.titleMedium)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
