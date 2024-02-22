import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/network/network_manager.dart';
import 'package:shop_kart/utils/popups/full_screen_loader.dart';
import 'package:shop_kart/utils/popups/loaders.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  ///variable
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController(); //input email
  final lastName = TextEditingController(); //input lastname
  final username = TextEditingController(); //input username
  final password = TextEditingController(); //input pass
  final firstName = TextEditingController();  //input firstname
  final phoneNumber = TextEditingController();  //input phone number
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();  //form key validation


  ///signup

  Future<void> signup() async {
    try{
      //start loading
      SkFullScreenLoader.openLoadingDialog('Fields Require....',SkImages.user);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        return;
      }

      //form validation
      if(!signUpFormKey.currentState!.validate()) return;

      //privacy policy check

      //register user in firebase authenticate & saver user data in the firebase

      //save authentication user data in the firebase

      //show success message

      //move to verify email


    } catch (e){
      // show some generic Error
      SkLoader.errorSnackBar(title:'oh snap!',message: e.toString());
    } finally{
      //remove loader
      SkFullScreenLoader.stopLoading();
    }
  }
}