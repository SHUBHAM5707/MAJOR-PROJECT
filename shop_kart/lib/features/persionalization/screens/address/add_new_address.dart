import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SkAppBar(showBackArrow: true,title: Text('Add new address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                const TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name')),
                const SizedBox(height: SkSizes.spaceBtwInputFields),
                const TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Number')),
                const SizedBox(height: SkSizes.spaceBtwInputFields),
                const Row(
                  children: [
                    Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'))),
                    SizedBox(height: SkSizes.spaceBtwInputFields),
                    Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.code),labelText: 'Pincode'))),
                  ],
                ),
                const SizedBox(height: SkSizes.spaceBtwInputFields),
                const Row(
                  children: [
                    Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'City'))),
                    SizedBox(height: SkSizes.spaceBtwInputFields),
                    Expanded(child: TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'State'))),
                  ],
                ),
                const SizedBox(height: SkSizes.spaceBtwInputFields),
                const TextField(decoration: InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Country')),
                const SizedBox(height: SkSizes.spaceBtwInputFields),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){},child: const Text('Save')))
              ],
            ),
          ),
        )
      ),
    );
  }
}
