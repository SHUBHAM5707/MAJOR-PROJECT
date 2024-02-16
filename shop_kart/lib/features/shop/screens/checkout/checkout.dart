import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/common/widgets/success_screen/success_screen.dart';
import 'package:shop_kart/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:shop_kart/features/shop/screens/checkout/widgets/billing_addess_section.dart';
import 'package:shop_kart/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:shop_kart/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/product/cart/coupon_widget.dart';
import '../../../../navigation_menu.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: SkAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///Item in cart
              const SkCartItems(showAddRemoveButton: false),
              const SizedBox(height: SkSizes.spaceBtwSections),

              /// --- Coupon TextField
              const SkCouponCode(),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///--billing section
              SkRoundedContainer(
                  showBorder: true,
                  padding: const EdgeInsets.all(SkSizes.md),
                  backgroundColor: dark ? SkColors.black : SkColors.white,
                  child: const Column(
                    children: [
                      ///pricing
                      SkBillingAmountSection(),
                      SizedBox(height: SkSizes.spaceBtwIteam),

                      ///Divider
                      Divider(),
                      SizedBox(height: SkSizes.spaceBtwIteam),

                      ///Payment method
                      SkBillingPaymentSection(),
                      SizedBox(height: SkSizes.spaceBtwIteam),

                      ///Address
                      SkBillingAddressSection()
                    ],
                  ))
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(SkSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
              () => SuccessScreen(
                image: SkImages.successfullPaymentIcon,
                title: 'Payment Sucessfull',
                subTitle: 'Your Order Has Been Placed',
                onPressed: () => Get.offAll(() => const NavigationMenu()),
              )
            ),
          child: const Text('Checkout ₹2599.00'),
        ),
      ),
    );
  }
}
