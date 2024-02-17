import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/features/shop/screens/all_product/all_product.dart';
import 'package:shop_kart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop_kart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shop_kart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            ///---header----
            SkPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///--appbar--
                  const SkHomeAppBar(),
                  const SizedBox(height: SkSizes.spaceBtwSections),

                  ///--searchbar--
                  const SkSearchContainer(text: 'Find Your Kick'),
                  const SizedBox(height: SkSizes.spaceBtwSections),

                  ///--categories--
                  Padding(
                    padding: const EdgeInsets.only(left: SkSizes.defaultSpace),
                    child: Column(
                      children: [

                        ///--heading--
                        SkSectionHeading(title: 'Popular category',onPressed: () => Get.to(() => const AllProduct())),
                        const SizedBox(height: SkSizes.spaceBtwIteam),

                        ///Categories
                        const SkHomeCategories(),
                      ],
                    ),
                  ),
                  const SizedBox(height: SkSizes.spaceBtwSections),

                ],
              ),
            ),

            ///----Body--
            Padding(
                padding: const EdgeInsets.all(SkSizes.defaultSpace),
                child: Column(
                  children: [
                    ///promo slider
                    const SkPromoSlider(banner: [SkImages.promoBanner1, SkImages.promoBanner2, SkImages.promoBanner3]),
                    const SizedBox(height: SkSizes.spaceBtwSections),

                    ///heading
                    SkSectionHeading(title: 'Popular Products',onPressed: () => Get.to(() => const AllProduct())),
                    const SizedBox(height: SkSizes.spaceBtwSections),

                    ///--product
                    SkGridLayout(itemCount: 2,itemBuilder: (_,index) => const SkProductCardVertical())
                  ],
                )
              ),
          ],
        ),
      ),
    );
  }
}



