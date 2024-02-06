import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/icons/sk_circular_icon.dart';
import 'package:shop_kart/common/widgets/layouts/grid_layout.dart';
import 'package:shop_kart/features/shop/screens/home/home.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

import '../../../../common/widgets/product_cards/product_card_vertical.dart';


class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SkAppBar(
        title: Text('Wishlist',style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          SkCircularIcon(icon: Iconsax.add,onPressed: () => Get.to(const HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(SkSizes.defaultSpace),
            child: Column(
              children: [SkGridLayout(itemCount: 7, itemBuilder: (_,index) => const SkProductCardVertical())],
            ),
        ),
      ),

    );
  }
}
