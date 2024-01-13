
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import 'package:shop_kart/common/widgets/icons/sk_circular_icon.dart';
import 'package:shop_kart/common/widgets/images/circular_image.dart';
import 'package:shop_kart/common/widgets/images/rounded_images.dart';
import 'package:shop_kart/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/product_deatil_image_slider.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:shop_kart/features/shop/screens/product_details/widget/rating_share_widget.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';
import 'package:shop_kart/utils/theme/custom_themes/outline_button_theme.dart';

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


