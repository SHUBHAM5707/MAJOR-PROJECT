import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop_kart/common/style/shimmer.dart';
import 'package:shop_kart/common/widgets/appbar/appbar.dart';
import 'package:shop_kart/common/widgets/images/circular_image.dart';
import 'package:shop_kart/common/widgets/texts/section_heading.dart';
import 'package:shop_kart/features/persionalization/controlles/user_controller.dart';
import 'package:shop_kart/features/persionalization/screens/profile/widgets/profile_menu.dart';
import 'package:shop_kart/utils/constants/sizes.dart';

import '../../../../utils/constants/image_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const SkAppBar(showBackArrow: true, title: Text('profile')),

      ///body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Obx(() {
                      final networkImage = controller.user.value.profilePicture;
                      final image = networkImage.isNotEmpty ? networkImage : SkImages.user;
                      return controller.imageUploading.value
                          ? const SkShimmerEffect(width: 80, height: 80, radius: 80)
                          : SkCircularImage(image: image, width: 80,height: 80,isNetworkImage: networkImage.isNotEmpty);
                    }),
                    TextButton(
                        onPressed: () => controller.uploadUserProfilePicture(),
                        child: const Text('change picture picture')),
                  ],
                ),
              ),

              ///detail
              const SizedBox(height: SkSizes.spaceBtwIteam / 2),
              const Divider(),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              const SkSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              ProfileMenu(
                title: 'name',
                value: controller.user.value.fullName,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'username',
                value: controller.user.value.username,
                onPressed: () {},
              ),

              const SizedBox(height: SkSizes.spaceBtwIteam),
              const Divider(),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              const SkSectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              ProfileMenu(
                title: 'user id',
                value: controller.user.value.id,
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'email',
                value: controller.user.value.email,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'number',
                value: controller.user.value.phoneNumber,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'gender',
                value: 'male',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'dob',
                value: '10/10/20',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              Center(
                child: TextButton(
                  onPressed: () => controller.deleteAccountWarningPopup(),
                  child: const Text('close account',
                      style: TextStyle(color: Colors.red)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
