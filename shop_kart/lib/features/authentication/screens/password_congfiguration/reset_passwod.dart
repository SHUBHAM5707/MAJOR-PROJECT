import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/features/authentication/controller/forget_password/forget_password_controller.dart';
import 'package:shop_kart/features/authentication/controller/login/login_controller.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/constants/text_string.dart';

import '../../../../utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///images
              Image(
                image: const AssetImage(SkImages.deliveredEmailIllustration), width: SKHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///Title & Subtitle
              Text(SkTexts.changePasswordSubTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              Text(SkTexts.changePasswordSubTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () => Get.offAll(() => LoginController()), child: const Text(SkTexts.done)),
              ),
              const SizedBox(height: SkSizes.spaceBtwIteam),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () => ForgetPasswordController.instance.resendPasswordResetEmail(email), child: const Text(SkTexts.resendEmail)),
              ),
              const SizedBox(height: SkSizes.spaceBtwIteam),
            ],
          ),
        ),
      ),
    );
  }
}
