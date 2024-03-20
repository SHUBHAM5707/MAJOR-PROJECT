
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/style/shimmer.dart';
import 'package:shop_kart/features/shop/controlles/banner_controller.dart';
import 'package:shop_kart/utils/constants/colors.dart';

import '../../../../../common/widgets/custom_shape/containers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/sizes.dart';

class SkPromoSlider extends StatelessWidget {
  const SkPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Obx(
        () {
          if (controller.isLoading.value) return const SkShimmerEffect(width: double.infinity, height: 190);

          if(controller.banners.isEmpty){
            return const Center(child: Text('Oh no data found'));
          } else{
            return Column(children: [
              CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    onPageChanged: (index, _) => controller.updatePageIndicator(index)),
                items: controller.banners
                    .map((banner) => SkRoundedImage(
                  imageUrl: banner.imageUrl,
                  isNetworkImage: true,
                  onPressed: () => Get.toNamed(banner.targetScreen),
                ))
                    .toList(),
              ),
              const SizedBox(height: SkSizes.spaceBtwIteam),
              Center(
                child: Obx(
                      () => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < controller.banners.length; i++)
                        SkCircularContainer(
                            width: 20,
                            height: 4,
                            margin: const EdgeInsets.only(right: 10),
                            backgroundColor: controller.carousalCurrentIndex.value == i
                                ? SkColors.primary
                                : SkColors.grey),
                    ],
                  ),
                ),
              ),
            ]);
          }
        }
    );
  }
}
