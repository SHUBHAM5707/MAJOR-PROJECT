import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/icons/sk_circular_icon.dart';
import 'package:shop_kart/common/widgets/texts/product_price_text.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/utils/constants/colors.dart';

import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../common/widgets/product/cart/add_remove_button.dart';
import '../../../../common/widgets/product/cart/cart_iteam.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SkAppBar(showBackArrow: true,title: Text('Kart',style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(SkSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 15,
          separatorBuilder: (_,__) => const SizedBox(height: SkSizes.spaceBtwSections),
          itemBuilder: (_,__) => const Column(
            children: [
              SkCartItem(),
              SizedBox(height: SkSizes.spaceBtwIteam),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ///extra space
                      SizedBox(width: 10),
                      ///add remove button
                      SkProductQuantityWithAddAndRemoveButton(),
                    ],
                  ),
                  SkProductPriceText(price: '2599')
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SkSizes.defaultSpace),
        child: ElevatedButton(onPressed: (){},child: Text('Checkout \2599.00'),),
      ),
    );
  }
}


