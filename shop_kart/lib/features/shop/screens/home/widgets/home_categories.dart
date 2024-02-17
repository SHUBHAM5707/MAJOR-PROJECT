import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/features/shop/screens/sub_categories/sub_categories.dart';

import '../../../../../common/widgets/images_text/vertical_image_text.dart';
import '../../../../../utils/constants/image_string.dart';


class SkHomeCategories extends StatelessWidget {
  const SkHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return SkVerticalImageText(
              image: SkImages.sportsIcon,
              title: 'Shoes',
              onTap: () => Get.to(() => const SubCategoriesScreen()));
        },
      ),
    );
  }
}
