import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_kart/data/repositories/authentication/authentication_repository.dart';
import 'package:shop_kart/features/authentication/screens/password_congfiguration/reset_passwod.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/network/network_manager.dart';
import 'package:shop_kart/utils/popups/full_screen_loader.dart';
import 'package:shop_kart/utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController{
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResendEmail() async{
    try {
      SkFullScreenLoader.openLoadingDialog('processing your request...', SkImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {SkFullScreenLoader.stopLoading(); return;}

      if(!forgetPasswordFormKey.currentState!.validate()){
        SkFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      SkFullScreenLoader.stopLoading();

      SkLoader.successSnackBar(title: 'Email sent',message:'password reset link is send on your email'.tr);

      Get.to(() => ResetPassword(email:email.text.trim()));

    } catch (e){
      SkFullScreenLoader.stopLoading();
      SkLoader.errorSnackBar(title: 'oh snap', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async{
    try {
      SkFullScreenLoader.openLoadingDialog('processing your request...', SkImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {SkFullScreenLoader.stopLoading(); return;}



      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      SkFullScreenLoader.stopLoading();

      SkLoader.successSnackBar(title: 'Email sent',message:'password reset link is send on your email'.tr);



    } catch (e){
      SkFullScreenLoader.stopLoading();
      SkLoader.errorSnackBar(title: 'oh snap', message: e.toString());
    }
  }
}