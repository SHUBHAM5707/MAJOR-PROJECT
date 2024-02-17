import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/features/shop/controlles/home_controller.dart';
import 'package:shop_kart/utils/constants/colors.dart';

import '../../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/sizes.dart';

class SkPromoSlider extends StatelessWidget {
  const SkPromoSlider({
    super.key, required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)),
            items: banner.map((url) => SkRoundedImage(imageUrl: url)).toList(),
      ),
      const SizedBox(height: SkSizes.spaceBtwIteam),
      Center(
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banner.length; i++)
                SkCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? SkColors.primary : SkColors.grey),
            ],
          ),
        ),
      ),
    ]);
  }
}
