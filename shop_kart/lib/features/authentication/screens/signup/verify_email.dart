import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/data/repositories/authentication/authentication_repository.dart';
import 'package:shop_kart/features/authentication/controller/signup/verify_email_controller.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/constants/text_string.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(


      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => AuthenticationRepository.instance.logout(),icon: const Icon(CupertinoIcons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SkSizes.defaultSpace),
          child: Column(
            children: [
              ///Images
              Image(
                image: const AssetImage(SkImages.deliveredEmailIllustration),
                width: SKHelperFunction.screenWidth() * 0.6,
              ),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///Title & Subtitle
              Text(SkTexts.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwIteam),
              Text(email ?? '', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwIteam),
              Text(SkTexts.confirmSubEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.checkEmailVerificationStatus(),
                    child: const Text(SkTexts.skContinue)),
              ),
              const SizedBox(height: SkSizes.spaceBtwIteam),
              SizedBox(width: double.infinity,child: TextButton(onPressed: () => controller.sendEmailVerification(), child: const Text(SkTexts.resendEmail))),
            ],
          ),
        ),
      ),
    );
  }
}
