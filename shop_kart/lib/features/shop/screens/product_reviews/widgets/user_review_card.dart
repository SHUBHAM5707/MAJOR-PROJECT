import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/rounded_container.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

import '../../../../../common/widgets/product/rating/rating_indicator.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = SKHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(SkImages.userProfileImage1)),
                const SizedBox(width: SkSizes.spaceBtwIteam),
                Text('divya jain',style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon:const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam),

        ///review
        Row(
          children: [
            const SkRatingBarIndicator(rating: 4),
            const SizedBox(width: SkSizes.spaceBtwIteam),
            Text('01-01-2024',style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam),
        const ReadMoreText(
          ' its perfect for any workout. Plus, its sleek design adds a fashionable touch. Durable and comfortable, this shoe is a top choice for athletes and fashion-conscious individuals alike.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: SkColors.primary),
          lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: SkColors.primary),
        ),
        const SizedBox(height: SkSizes.spaceBtwIteam),

        ///company review
        SkRoundedContainer(
          backgroundColor: dark ? SkColors.darkenGrey : SkColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(SkSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("ShopKart's Store",style: Theme.of(context).textTheme.bodyLarge),
                    Text("01-01-2024",style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
                const SizedBox(height: SkSizes.spaceBtwIteam),
                const ReadMoreText(
                  ' its perfect for any workout. Plus, its sleek design adds a fashionable touch. Durable and comfortable, this shoe is a top choice for athletes and fashion-conscious individuals alike.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: SkColors.primary),
                  lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: SkColors.primary),
                ),

              ],
            ),

          ),

        ),
        const SizedBox(height: SkSizes.spaceBtwSections,)

      ],
    );
  }
}
