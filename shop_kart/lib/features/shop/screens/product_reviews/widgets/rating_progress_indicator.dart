import 'package:flutter/material.dart';
import 'package:shop_kart/features/shop/screens/product_reviews/widgets/product_indicator_rating.dart';

class SkOverallProductRating extends StatelessWidget {
  const SkOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 5,child: Text('4.8',style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              SkRatingProgressIndicator(text: '5',value: 1.0),
              SkRatingProgressIndicator(text: '4',value: 0.8),
              SkRatingProgressIndicator(text: '3',value: 0.6),
              SkRatingProgressIndicator(text: '2',value: 0.4),
              SkRatingProgressIndicator(text: '1',value: 0.2),

            ],
          ),
        )

      ],
    );
  }
}
