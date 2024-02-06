import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/custom_shape/containers/primary_header_container.dart';
import 'package:shop_kart/common/widgets/list_tiles/setting_menu_tile.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/utils/constants/colors.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///--header
            SkPrimaryHeaderContainer(
                child: Column(
              children: [
                ///Appbar
                SkAppBar(
                    title: Text('Account',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .apply(color: SkColors.white))),

                ///user profile
                const UserProfileTile(),
                const SizedBox(
                  height: SkSizes.spaceBtwSections,
                ),
              ],
            )),

            ///---body
            Padding(
              padding: const EdgeInsets.all(SkSizes.defaultSpace),
              child: Column(
                children: [
                  ///ACCOUNT SETTING
                  const SkSectionHeading(title: 'Account Setting',showActionButton: false),
                  const SizedBox(
                    height: SkSizes.spaceBtwIteam,
                  ),

                  const SkSettingMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Delivery Address'),
                  const SkSettingMenuTile(icon: Iconsax.shopping_cart, title: 'My Kart', subTitle: 'Delivery Address'),
                  const SkSettingMenuTile(icon: Iconsax.bag_tick, title: 'My Order', subTitle: 'Delivery Address'),
                  const SkSettingMenuTile(icon: Iconsax.bank, title: 'Bank Account', subTitle: 'Delivery Address',),
                  const SkSettingMenuTile(icon: Iconsax.discount_shape, title: 'Coupons', subTitle: 'Delivery Address'),
                  const SkSettingMenuTile(icon: Iconsax.notification, title: 'Notifications', subTitle: 'Delivery Address'),
                  const SkSettingMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Delivery Address'),

                  ///app setting
                  const SizedBox(height: SkSizes.spaceBtwSections),
                  const SkSectionHeading(title: 'App Setting',showActionButton: false),
                  const SizedBox(height: SkSizes.spaceBtwIteam),
                  const SkSettingMenuTile(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to cloud firebase'),
                  SkSettingMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      subTitle: 'set recommended location',
                      trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SkSettingMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search in Safe mode',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SkSettingMenuTile(
                    icon: Iconsax.image,
                    title: 'HD images',
                    subTitle: 'set image quality to HD',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
