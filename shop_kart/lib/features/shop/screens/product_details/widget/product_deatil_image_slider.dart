import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shape/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/sk_circular_icon.dart';
import '../../../../../common/widgets/images/rounded_images.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
class SkProductImageSlider extends StatelessWidget {
  const SkProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);

    return SkCurvedEdgeWidget(
      child: Container(
        color: dark ? SkColors.darkenGrey : SkColors.light,
        child: Stack(
          children: [
            ///main large Image
            const SizedBox(height: 400,child: Padding(
              padding: EdgeInsets.all(SkSizes.productImageRadius),
              child: Center(child: Image(image: AssetImage(SkImages.productImage1))),
            ),
            ),
            Positioned(
              right: 0,
              bottom: 30,
              left: SkSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_,__) => const SizedBox(width: SkSizes.spaceBtwIteam),
                  itemBuilder:(_,index) => SkRoundedImage(
                    width: 80,
                    backgroundColor: dark ? SkColors.darkenGrey : SkColors.light,
                    border: Border.all(color: SkColors.primary),
                    padding: const EdgeInsets.all(SkSizes.sm),
                    imageUrl: SkImages.productImage1,

                  ),
                ),
              ),
            ),
            ///appbar icon
            const SkAppBar(
              showBackArrow: true,
              actions: [SkCircularIcon(icon: Iconsax.heart5, color: Colors.red),],
            )

          ],

        ),
      ),
    );
  }
}
