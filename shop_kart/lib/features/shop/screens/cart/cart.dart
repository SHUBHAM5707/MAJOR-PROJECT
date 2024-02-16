import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/icons/sk_circular_icon.dart';
import 'package:shop_kart/common/widgets/texts/product_price_text.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:shop_kart/utils/constants/colors.dart';

import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../common/widgets/product/cart/add_remove_button.dart';
import '../../../../common/widgets/product/cart/cart_item.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SkAppBar(
          showBackArrow: true,
          title:
              Text('Kart', style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(SkSizes.defaultSpace),

        ///---item cart
        child: SkCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SkSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckoutScreen()),
          child: const Text('Checkout \2599.00'),
        ),
      ),
    );
  }
}
