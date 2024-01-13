import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';

class SkRatingAndShare extends StatelessWidget {
  const SkRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ///rating
        Row(
          children: [
            const Icon(Iconsax.star5,color: Colors.amber,size: 24),
            const SizedBox(width: SkSizes.spaceBtwIteam / 2),
            Text.rich(
                TextSpan(
                    children: [
                      TextSpan(text: '5.0',style: Theme.of(context).textTheme.bodyLarge),
                      const TextSpan(text: '(25)')
                    ]
                )
            )
          ],
        ),

        ///Share button
        IconButton(onPressed: (){}, icon: const Icon(Icons.share,size: SkSizes.iconMd,))
      ],
    );
  }
}
