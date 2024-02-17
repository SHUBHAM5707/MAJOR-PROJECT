import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/brand/brand_card.dart';
import 'package:shop_kart/common/widgets/layouts/grid_layout.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/features/shop/screens/brand/brand_product.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SkAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///heading
              const SkSectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              ///bands
              SkGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => SkBrandCard(showBorder: true, onTap: () => Get.to(() => const BrandProduct()),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
