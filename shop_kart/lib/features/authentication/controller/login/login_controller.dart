import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop_kart/data/repositories/authentication/authentication_repository.dart';
import 'package:shop_kart/features/persionalization/controlles/user_controller.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/network/network_manager.dart';
import 'package:shop_kart/utils/popups/full_screen_loader.dart';
import 'package:shop_kart/utils/popups/loaders.dart';

class LoginController extends GetxController{
  ///variable
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());


  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text = localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
  }

  ///--email and password Sign-in
  Future<void> emailAndPasswordSignIn() async{
    try{
      SkFullScreenLoader.openLoadingDialog('logging you in ...', SkImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected) {
        SkFullScreenLoader.stopLoading();
        return;
      }

      if(!loginFormKey.currentState!.validate()){
        SkFullScreenLoader.stopLoading();
        return;
      }

      if(rememberMe.value){
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      final userCredentials = await AuthenticationRepository.instance.loginWithEmailAndPassword(email.text.trim(), password.text.trim());


      SkFullScreenLoader.stopLoading();

      AuthenticationRepository.instance.screenRedirect();

    }catch (e) {
      SkFullScreenLoader.stopLoading();
      SkLoader.errorSnackBar(title: 'Oh Snap.....',message: e.toString());
    }
  }

  ///---google sign-in auth

  Future<void> googleSignIn() async {
    try{
      SkFullScreenLoader.openLoadingDialog('logging you in.... ', SkImages.docerAnimation);

      //check network
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        SkFullScreenLoader.stopLoading();
        return;
      }

      //google authentication
      final userCredentials = AuthenticationRepository.instance.signInWithGoogle();

      await userController.saveUserRecord(UserCredential as UserCredential?);

      SkFullScreenLoader.stopLoading();

      AuthenticationRepository.instance.screenRedirect();

    }catch(e){
      SkLoader.errorSnackBar(title: 'oh snap',message: e.toString());
    }
  }


}