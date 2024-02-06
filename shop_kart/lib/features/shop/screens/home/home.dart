import 'package:flutter/material.dart';
import 'package:shop_kart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop_kart/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shop_kart/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import '../../../../common/widgets/custom_shape/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shape/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/product_cards/product_card_vertical.dart';
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
            const SkPrimaryHeaderContainer(
              child: Column(
                children: [

                  ///--appbar--
                  SkHomeAppBar(),
                  SizedBox(height: SkSizes.spaceBtwSections),

                  ///--searchbar--
                  SkSearchContainer(text: 'Find Your Kick'),
                  SizedBox(height: SkSizes.spaceBtwSections),

                  ///--categories--
                  Padding(
                    padding: EdgeInsets.only(left: SkSizes.defaultSpace),
                    child: Column(
                      children: [

                        ///--heading--
                        SkSectionHeading(title: 'Popular category',
                          showActionButton: false,
                          textColor: Colors.white,),
                        SizedBox(height: SkSizes.spaceBtwIteam),

                        ///Categories
                        SkHomeCategories(),
                      ],
                    ),
                  ),
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
                    const SkSectionHeading(title: 'Popular Products'),
                    const SizedBox(height: SkSizes.spaceBtwSections),

                    ///--product
                    SkGridLayout(itemCount: 2,itemBuilder: (_,index) => const SkProductCardVertical())
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}



