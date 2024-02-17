import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/brand/brand_card.dart';
import 'package:shop_kart/common/widgets/product/sortable/sortable_products.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SkAppBar(title: Text('Nike'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///brand detail
              SkBrandCard(showBorder: true),
              SizedBox(height: SkSizes.spaceBtwSections),

              SkSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
