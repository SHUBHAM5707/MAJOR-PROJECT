import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop_kart/features/authentication/screens/onboarding/onboarding.dart';

import '../../features/authentication/screens/login/login.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  ///variable
  final deviceStorage = GetStorage();

  ///called from main.dart on app launch
  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  ///function to show relevant  Screen
  screenRedirect() async{
    ///local storage

    if(kDebugMode){
      print('===============Get Storage Auth repo=============');
      print(deviceStorage.read('IsFirstTime'));
    }

    deviceStorage.writeIfNull('IsFirstTime', true);
    deviceStorage.read('IsFirstTime')!= true ? Get.offAll(() => const LoginScreen()) : Get.offAll(const OnBoardingScreen());
  }

  /*---Email and password sign-in-----*/
  ///[email authentication]--sign-in
  ///[email authentication]-register
  ///[Re authentication]- re Authentication
  ///[email verification]- mail verification
  ///[email authentication]- forget password

  /*--- social login---*/
  ///[google authentication]-google
  ///[google authentication]-facebook


  /*---logout social sign*/
  ///[logoutUser]
  ///delete-user

}