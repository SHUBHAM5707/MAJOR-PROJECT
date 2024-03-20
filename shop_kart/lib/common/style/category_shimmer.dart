import 'package:flutter/material.dart';
import 'package:shop_kart/common/style/shimmer.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class SkCategoryShimmer extends StatelessWidget {
  const SkCategoryShimmer({super.key, this.itemCount = 6});

  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 80,
        child: ListView.separated(
            shrinkWrap: true,
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_,__)=> const SizedBox(width: SkSizes.spaceBtwIteam),
          itemBuilder: (_,__){
              return const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkShimmerEffect(width: 55, height: 55,radius: 55),
                  SizedBox(height: SkSizes.spaceBtwIteam / 2),

                  SkShimmerEffect(width: 55, height: 8)
                ],
              );
          }
        ),
    );
  }
}
