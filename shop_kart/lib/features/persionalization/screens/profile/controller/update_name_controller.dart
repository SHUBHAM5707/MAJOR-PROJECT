import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shop_kart/data/repositories/user/user_repository.dart';
import 'package:shop_kart/features/persionalization/screens/profile/profile.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/network/network_manager.dart';
import 'package:shop_kart/utils/popups/full_screen_loader.dart';
import 'package:shop_kart/utils/popups/loaders.dart';

import '../../../controlles/user_controller.dart';

class UpdateNameController extends GetxController{
  static UpdateNameController get instance => Get.find();

  ///variable
  final firstName = TextEditingController(); //input lastname
  final lastName = TextEditingController(); //input username
  final userController =  UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeNames();
    super.onInit();
  } //form key validation

  Future<void> initializeNames() async{
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;

  }



  Future<void> updateUserName() async {
    try{
      //start loading
      SkFullScreenLoader.openLoadingDialog('updating your information....',SkImages.user);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        return;
      }

      //form validation
      if(!updateUserNameFormKey.currentState!.validate()) {
        SkFullScreenLoader.stopLoading();
        return;
      }

      Map<String,dynamic> name = {'FirstName' : firstName.text.trim(),'LastName' : firstName.text.trim()};
      await userRepository.updateSingleField(name);

      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = firstName.text.trim();

      SkFullScreenLoader.stopLoading();

      SkLoader.successSnackBar(title: 'your name has been updated');

      Get.off(()=> const ProfileScreen());

    } catch (e){
      // show some generic Error
      SkLoader.errorSnackBar(title:'oh snap!',message: e.toString());
    } finally{
      //remove loader
      SkFullScreenLoader.stopLoading();
    }
  }
}