import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class SkSortableProducts extends StatelessWidget {
  const SkSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///dropdown
        DropdownButtonFormField(
          decoration:
          const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Name', 'High Price', 'Lower Price', 'Sale', 'New Arrival', 'Popular']
              .map((option) => DropdownMenuItem(value: option, child: Text(option)))
              .toList(),
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam),
        ///products
        SkGridLayout(itemCount: 10, itemBuilder: (_,index) => const SkProductCardVertical())
      ],
    );
  }
}
