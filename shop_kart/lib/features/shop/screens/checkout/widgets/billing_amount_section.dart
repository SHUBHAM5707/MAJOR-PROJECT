import 'package:flutter/material.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class SkBillingAmountSection extends StatelessWidget {
  const SkBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹1599.00',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam / 2),

        ///shipping
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹99.00',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam / 2),


        ///tax
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Gst',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹180.00',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam / 2),

        ///order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order total ',style: Theme.of(context).textTheme.bodyMedium),
            Text('₹1798',style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
      ],
    );
  }
}
