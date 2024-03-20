import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/appbar/tabbar.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/search_container.dart';
import 'package:shop_kart/common/widgets/layouts/grid_layout.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/features/shop/controlles/categories_controller.dart';
import 'package:shop_kart/features/shop/screens/brand/all_brand.dart';
import 'package:shop_kart/features/shop/screens/store/widget/category_tab.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';
import '../../../../common/widgets/brand/brand_card.dart';
import '../../../../common/widgets/product/cart/cart_menu_icart.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoriesController.instance.featuredCategories;

    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
          appBar: SkAppBar(
            title: Text(
              'Store',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              SkCartCounterIcon(onPressed: () {}),
            ],
          ),
          body: NestedScrollView(
      
              ///header
              headerSliverBuilder: (_, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: SKHelperFunction.isDarkMode(context)
                        ? SkColors.black
                        : SkColors.white,
                    expandedHeight: 440,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.all(SkSizes.defaultSpace),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          ///search bar
                          const SizedBox(height: SkSizes.spaceBtwIteam),
                          const SkSearchContainer(
                            text: 'Search Dream Brand ',
                            showBorder: true,
                            showBackground: false,
                            padding: EdgeInsets.zero,
                          ),
                          const SizedBox(height: SkSizes.spaceBtwSections),
      
                          ///Feature Brands
                          SkSectionHeading(
                              title: 'Features Brand', onPressed: () => Get.to(() => const AllBrandScreen())),
                          const SizedBox(
                            height: SkSizes.spaceBtwIteam / 1.5,
                          ),
      
                          SkGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return const SkBrandCard(showBorder: true);
                              })
                        ],
                      ),
                    ),
      
                    ///Tabs
                    bottom:SkTabBar(tabs: categories.map((category)=> Tab(child: Text(category.name))).toList()),
                  ),
                ];
              },

              ///--body---
              body: TabBarView(
                children: categories.map((category)=> SkCategoryTab(category: category)).toList(),
              )
          )
      ),
    );
  }
}


