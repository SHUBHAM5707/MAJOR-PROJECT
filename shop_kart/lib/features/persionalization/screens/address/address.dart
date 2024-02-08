import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/features/persionalization/screens/address/add_new_address.dart';
import 'package:shop_kart/features/persionalization/screens/address/widgets/single_address.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: SkColors.primary,
        onPressed:() => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add,color: SkColors.white),
      ),
      appBar: SkAppBar(
        showBackArrow: true,
        title: Text('Address',style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              SkSingleAddress(selectedAddress: true),
              SizedBox(height: SkSizes.spaceBtwIteam,),
              SkSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
