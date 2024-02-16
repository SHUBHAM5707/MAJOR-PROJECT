import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class SkBillingAddressSection extends StatelessWidget {
  const SkBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SkSectionHeading(title: ' Shipping Address',buttonTitle: 'change',onPressed: () {}),
        Text(' Divya Patel',style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: SkSizes.spaceBtwIteam / 2),
        Row(
          children: [
            const Icon(Icons.phone,color: Colors.grey,size: 16),
            const SizedBox(height: SkSizes.spaceBtwIteam),
            Text(' +91 95647-96582',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam / 2),
        Row(
          children: [
            const Icon(Icons.location_city,color: Colors.grey,size: 16),
            const SizedBox(height: SkSizes.spaceBtwIteam),
            Expanded(child: Text(' 29A SouthZone , Udhana Surat',style: Theme.of(context).textTheme.bodyMedium)),
          ],
        ),

      ],
    );
  }
}
