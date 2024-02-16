import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/images/rounded_images.dart';
import 'package:shop_kart/common/widgets/product_cards/product_card_horizontal.dart';
import 'package:shop_kart/common/widgets/texts/product_price_text.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SkAppBar(title: Text('Sports T-shirts'),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///banner
              const SkRoundedImage(width: double.infinity,imageUrl: SkImages.promoBanner1,applyImageRadius: true),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              ///sub-categories
              Column(
                children: [
                  ///heading
                  SkSectionHeading(title: 'Sports T-shirts',onPressed: (){}),
                  const SizedBox(height: SkSizes.spaceBtwIteam / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context,index) => const SizedBox(width: SkSizes.spaceBtwIteam),
                      itemBuilder: (context,index) => const SkProductCardHorizontal(),


                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
