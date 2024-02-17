import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

import '../../../../common/widgets/product/sortable/sortable_products.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          SkAppBar(title: Text('Popular Product'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SkSizes.defaultSpace),
          child: SkSortableProducts(),
        ),
      ),
    );
  }
}

