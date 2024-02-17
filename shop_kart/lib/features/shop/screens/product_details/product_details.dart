import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:readmore/readmore.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/product_deatil_image_slider.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:shop_kart/features/shop/screens/product_reviews/product_review.dart';

import 'package:shop_kart/utils/constants/sizes.dart';


class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const SKBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product image slider
            const SkProductImageSlider(),


            ///product  Detail
            Padding(
                padding: const EdgeInsets.only(right: SkSizes.defaultSpace, left: SkSizes.defaultSpace,bottom: SkSizes.defaultSpace),
                child: Column(
                  children: [
                    ///rating And Share
                    const SkRatingAndShare(),


                    ///price title,stock & Brand
                    const SkProductMetaData(),

                    ///attribute
                    const SkProductAttributes(),
                    const SizedBox(height: SkSizes.spaceBtwSections),

                    ///Checkout button
                    SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),

                    ///description
                    const SkSectionHeading(title: 'Description'),
                    const SizedBox(height: SkSizes.spaceBtwIteam),
                    const ReadMoreText(
                      'Introducing the Nike Green Sports Shoe - the perfect blend of style and performance. Crafted with precision, this shoe boasts a sleek design in vibrant green hues, making a bold statement on and off the field',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Less',
                      moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),

                    ),


                    ///Review
                    const Divider(),

                    const SizedBox(height: SkSizes.spaceBtwIteam),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SkSectionHeading(title: 'Reviews(90)',showActionButton: false),
                        IconButton(icon: const Icon(Iconsax.arrow_right_3,size: 18),onPressed: () => Get.to(() => const ProductReviewScreen())),
                      ],
                    ),

                    const SizedBox(height: SkSizes.spaceBtwSections),


                  ],

                ),
            )
          ],
        ),
      ),
    );
  }
}


