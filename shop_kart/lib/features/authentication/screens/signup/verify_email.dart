import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/widgets/success_screen/success_screen.dart';
import 'package:shop_kart/features/authentication/screens/login/login.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/constants/text_string.dart';
import 'package:shop_kart/utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
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
              Text('Support@Shopkart.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwIteam),
              Text(SkTexts.confirmSubEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: SkSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                          () => SuccessScreen(
                            image: SkImages.staticSuccessIllustration,
                            title: SkTexts.accountCreatedTitle,
                            subTitle: SkTexts.accountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          ),
                        ),
                    child: const Text(SkTexts.skContinue)),
              ),
              const SizedBox(height: SkSizes.spaceBtwIteam),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(SkTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
