import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/search_container.dart';
import 'package:shop_kart/common/widgets/layouts/grid_layout.dart';
import 'package:shop_kart/common/widgets/product.cart/cart_menu_icart.dart';
import 'package:shop_kart/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/enums.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../common/widgets/images/circular_image.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
                              title: 'Features Brand', onPressed: () {}),
                          const SizedBox(
                            height: SkSizes.spaceBtwIteam / 1.5,
                          ),
      
                          SkGridLayout(
                              itemCount: 4,
                              mainAxisExtent: 80,
                              itemBuilder: (_, index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: SkRoundedContainer(
                                    padding: const EdgeInsets.all(SkSizes.sm),
                                    showBorder: true,
                                    backgroundColor: Colors.transparent,
                                    child: Row(
                                      children: [
                                        ///icon
                                        Flexible(
                                          child: SkCircularImage(
                                            isNetworkImage: false,
                                            image: SkImages.clothIcon,
                                            backgroundColor: Colors.transparent,
                                            overlayColor:
                                                SKHelperFunction.isDarkMode(
                                                        context)
                                                    ? SkColors.white
                                                    : SkColors.black,
                                          ),
                                        ),
                                        const SizedBox(
                                            height: SkSizes.spaceBtwIteam / 2),
      
                                        ///text
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SKBrandTitleWithVerifiedIcon(
                                                  title: 'Nike',
                                                  brandTextSize: TextSizes.large),
                                              Text(
                                                '295 products',
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })
                        ],
                      ),
                    ),
      
                    ///Tabs
                    bottom: TabBar(
                      isScrollable: true,
                      indicatorColor: SkColors.primary,
                      unselectedLabelColor: SkColors.dark,
                      labelColor: SKHelperFunction.isDarkMode(context) ? SkColors.white : SkColors.primary,
      
                      tabs: [
      
                        Tab(child: Text('Sports')),
                        Tab(child: Text('Fashion')),
                        Tab(child: Text('LifeStyle')),
                        Tab(child: Text('Beauty')),
                    ]),
                  ),
                ];
              },
              body: Container())),
    );
  }
}
