import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shop_kart/common/widgets/success_screen/success_screen.dart';
import 'package:shop_kart/data/repositories/authentication/authentication_repository.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/text_string.dart';
import 'package:shop_kart/utils/popups/loaders.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  ///send email Whenever verify screen appear And resend timer
  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  ///send email verify link
  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      SkLoader.successSnackBar(
          title: 'Email send',
          message: 'Please check your inbox to verify your email');
    } catch (e) {
      SkLoader.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  ///timer to automatically redirect on email verify
  setTimerForAutoRedirect() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(
                () =>
                SuccessScreen(image: SkImages.successfullRegistrationAnimation,
                    title: SkTexts.accountCreatedTitle,
                    subTitle:SkTexts.accountCreatedSubTitle,
                    onPressed: () => AuthenticationRepository.instance.screenRedirect()
                )
        );
      }
    });
  }

  ///Manually check if email verified'
  checkEmailVerificationStatus() async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser != null && currentUser.emailVerified) {
      Get.off(
              () =>
              SuccessScreen(image: SkImages.successfullRegistrationAnimation,
                  title: SkTexts.accountCreatedTitle,
                  subTitle:SkTexts.accountCreatedSubTitle,
                  onPressed: () => AuthenticationRepository.instance.screenRedirect()
              )
      );

    }
  }
}
