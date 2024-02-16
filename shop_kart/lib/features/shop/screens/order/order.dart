import 'package:flutter/material.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/features/shop/screens/order/widgets/order_list.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///--Appbar
      appBar: SkAppBar(title: Text('My Order',style: Theme.of(context).textTheme.headlineSmall)),
      body: const Padding(
        padding: EdgeInsets.all(SkSizes.defaultSpace),

        ///orders
        child: SkOrderListItems(),
      ),
    );
  }
}
