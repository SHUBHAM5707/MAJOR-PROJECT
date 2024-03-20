import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/style/category_shimmer.dart';
import 'package:shop_kart/features/shop/controlles/categories_controller.dart';
import 'package:shop_kart/features/shop/screens/sub_categories/sub_categories.dart';

import '../../../../../common/widgets/images_text/vertical_image_text.dart';


class SkHomeCategories extends StatelessWidget {
  const SkHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoriesController());



    return Obx((){
      if(categoryController.isLoading.value) return const SkCategoryShimmer();

      if(categoryController.featuredCategories.isEmpty){
        return Center(child: Text('no data found',style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)));
      }

            return SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: categoryController.featuredCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final category = categoryController.featuredCategories[index];
                  return SkVerticalImageText(image: category.image, title: category.name,onTap: () => Get.to(() => const SubCategoriesScreen()));
                },
              ),
            );
          });
  }
}
