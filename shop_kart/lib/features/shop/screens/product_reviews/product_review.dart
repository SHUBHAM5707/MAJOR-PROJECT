import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:shop_kart/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

import '../../../../common/widgets/product/rating/rating_indicator.dart';


class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: const SkAppBar(title: Text('Reviews & Rating'), showBackArrow: true),

      ///body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(SkSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Rating & Reviews are verified are from people who are the same type of device"),
            const SizedBox(height: SkSizes.spaceBtwIteam),

            ///over all rating
            const SkOverallProductRating(),
            const SkRatingBarIndicator(rating: 3.5,),
            Text("599",style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: SkSizes.spaceBtwSections),

            ///user Reviews list
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
          ],
        ),

      ),
    );
  }
}



