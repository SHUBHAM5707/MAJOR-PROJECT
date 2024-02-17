import 'package:flutter/material.dart';

import '../../../../../common/widgets/product/cart/add_remove_button.dart';
import '../../../../../common/widgets/product/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class SkCartItems extends StatelessWidget {
  const SkCartItems({super.key,
    this.showAddRemoveButton = true,
  });


  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_,__) => const SizedBox(height: SkSizes.spaceBtwSections),
      itemBuilder: (_,__) => Column(
        children: [
          ///cart item
          const SkCartItem(),
          if(showAddRemoveButton) const SizedBox(height: SkSizes.spaceBtwIteam),

          ///add remove   button with total price
          if(showAddRemoveButton)
            const Row(
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
    );
  }
}
