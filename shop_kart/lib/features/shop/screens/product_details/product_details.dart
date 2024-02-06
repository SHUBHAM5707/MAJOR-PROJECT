
import 'package:flutter/material.dart';

import 'package:shop_kart/features/shop/screens/product_details/widget/product_deatil_image_slider.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/rating_share_widget.dart';

import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';


class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product image slider
            SkProductImageSlider(),


            ///product  Detail
            Padding(
                padding: EdgeInsets.only(right: SkSizes.defaultSpace, left: SkSizes.defaultSpace,bottom: SkSizes.defaultSpace),
                child: Column(
                  children: [
                    ///rating And Share
                    SkRatingAndShare(),


                    ///price title,stock & Brand
                    SkProductMetaData()

                    ///attribute
                    ///Checkout button
                    ///description
                    ///Review
                  ],

                ),
            )
          ],
        ),
      ),
    );
  }
}


