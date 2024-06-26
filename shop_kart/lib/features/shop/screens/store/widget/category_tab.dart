
import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/layouts/grid_layout.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../common/widgets/product/product_cards/product_card_vertical.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';

class SkCategoryTab extends StatelessWidget {
  const SkCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///--brands
              const SKBrandShowCase(images: [SkImages.productImage1, SkImages.productImage1, SkImages.productImage1,],),
              const SKBrandShowCase(images: [SkImages.productImage1, SkImages.productImage1, SkImages.productImage1,],),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              ///products
              SkSectionHeading(title: 'You might Like', onPressed: () {}),
              const SizedBox(height: SkSizes.spaceBtwIteam,),

              SkGridLayout(itemCount: 4, itemBuilder: (_, index) => const SkProductCardVertical()),
              const SizedBox(height: SkSizes.spaceBtwSections,),
            ],
          ),
        )
      ],
    );
  }
}
