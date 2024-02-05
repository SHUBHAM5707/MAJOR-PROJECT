import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import 'brand_card.dart';
import '../custom_shape/containers/rounded_container.dart';

class SKBrandShowCase extends StatelessWidget {
  const  SKBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SkRoundedContainer(
      showBorder: true,
      borderColor: SkColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(SkSizes.md),
      margin: const EdgeInsets.only(bottom: SkSizes.spaceBtwIteam),
      child: Column(
        children: [
          ///brand with no count
          const SkBrandCard(showBorder: false),
          const SizedBox(height: SkSizes.spaceBtwIteam,),

          ///brand top 3 img
          Row(children: images.map((image) => brandTopProductImageWidget(image, context)).toList())
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context) {
    return Expanded(
      child: SkRoundedContainer(
        height: 100,
        backgroundColor: SKHelperFunction.isDarkMode(context) ? SkColors
            .darkenGrey : SkColors.light,
        margin: const EdgeInsets.only(right: SkSizes.sm),
        padding: const EdgeInsets.all(SkSizes.md),
        child:  Image(
          fit: BoxFit.contain, image: AssetImage(image),),
      ),
    );
  }
}
