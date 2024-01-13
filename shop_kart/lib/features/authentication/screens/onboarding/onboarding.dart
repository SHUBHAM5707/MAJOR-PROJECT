import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_kart/features/authentication/controlles.onboarding/onboarding_controller.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/text_string.dart';

import '../widgets/onboarding_dot_navigation.dart';
import '../widgets/onboarding_next_button.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';

class  OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable page
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  OnBoardingPage(
                    image: SkImages.onBoardingImage1,
                    title: SkTexts.onBoardingTitle1,
                    subTitle: SkTexts.onBoardingSubTitle1,
                  ),
                  OnBoardingPage(
                    image: SkImages.onBoardingImage2,
                    title: SkTexts.onBoardingTitle2,
                    subTitle: SkTexts.onBoardingSubTitle2,
                  ),
                  OnBoardingPage(
                    image: SkImages.onBoardingImage3,
                    title: SkTexts.onBoardingTitle3,
                    subTitle: SkTexts.onBoardingSubTitle3,
                  ),
                ],
              ),

          ///skip Button
          const OnBoardingSkip(),

          ///dot navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnboardingNextButton()
        ]
      ),
    );
  }
}





