import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart%20';
import 'package:get/get.dart';
import 'package:shop_kart/data/repositories/authentication/authentication_repository.dart';
import 'package:shop_kart/data/repositories/user/user_repository.dart';
import 'package:shop_kart/features/authentication/screens/login/login.dart';
import 'package:shop_kart/features/persionalization/screens/profile/widgets/re_authication_user_login.dart';
import 'package:shop_kart/utils/constants/image_string.dart';
import 'package:shop_kart/utils/constants/sizes.dart';
import 'package:shop_kart/utils/popups/full_screen_loader.dart';
import 'package:shop_kart/utils/popups/loaders.dart';

import '../../../utils/network/network_manager.dart';
import '../../authentication/models/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final profileLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;

  final hidePassword = false.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();
  final userRepository = Get.put(UserRepository());

  GlobalKey<FormState>reAuthFormKey = GlobalKey<FormState>();


  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();

  }
  Future<void> fetchUserRecord() async{
    try{
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally{
      profileLoading.value = false;
    }
  }

  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    try {
      if (userCredentials != null) {
        final nameParts =
            UserModel.nameParts(userCredentials.user!.displayName ?? '');
        final username =
            UserModel.generateUsername(userCredentials.user!.displayName ?? '');

        final user = UserModel(
            id: userCredentials.user!.uid,
            firstName: nameParts[0],
            lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
            username: username,
            email: userCredentials.user!.email ?? '',
            phoneNumber: userCredentials.user!.phoneNumber ?? '',
            profilePicture: userCredentials.user!.photoURL ?? '',
        );

        await userRepository.saveUserRecord(user);

      }
    } catch (e) {
      SkLoader.warningSnackBar(
          title: 'Data not saved',
          message:
              'something went wrong while saving Data,please re enter data'
      );
    }
  }

  void deleteAccountWarningPopup(){
    Get.defaultDialog(
      contentPadding: const EdgeInsets.all(SkSizes.md),
      title: 'delete account',
      middleText: 'Are you sure to delete your account? it will permanently delete your account',
      confirm: ElevatedButton(
          onPressed: () async => deleteUserAccount(),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red,side: const BorderSide(color: Colors.red)),
          child: const Padding(padding: EdgeInsets.symmetric(horizontal: SkSizes.ld),child: Text('Delete'))
      ),
      cancel: OutlinedButton(
        child: const Text('cancel'),
        onPressed: ()=> Navigator.of(Get.overlayContext!).pop(),
      )
    );
  }

  void deleteUserAccount() async{
    try {
      SkFullScreenLoader.openLoadingDialog('processing', SkImages.docerAnimation);

      final auth = AuthenticationRepository.instance;
      final provider= auth.authUser!.providerData.map((e) => e.providerId).first;
      if(provider.isNotEmpty){
        if(provider == 'google.com'){
          await auth.signInWithGoogle();
          await auth.deleteAccount();
          SkFullScreenLoader.stopLoading();
          Get.offAll(() => const LoginScreen());
        } else if(provider == 'password'){
          SkFullScreenLoader.stopLoading();
          Get.to(()=> const ReAuthLoginForm());
        }
      }
    }catch(e){
      SkFullScreenLoader.stopLoading();
      SkLoader.warningSnackBar(title: 'oohh snap',message: e.toString());
    }
  }

  Future<void> reAuthenticateEmailAndPassword() async {
    try{
      //start loading
      SkFullScreenLoader.openLoadingDialog('processing....',SkImages.user);

      //check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        return;
      }

      //form validation
      if(!reAuthFormKey.currentState!.validate()) {
        SkFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.reAuthenticateEmailAndPassword(verifyEmail.text.trim(),verifyPassword.text.trim());
      await AuthenticationRepository.instance.deleteAccount();
      SkFullScreenLoader.stopLoading();
      Get.offAll(()=> const LoginScreen());

    } catch (e){
      // show some generic Error
      SkLoader.errorSnackBar(title:'oh snap!',message: e.toString());
    } finally{
      //remove loader
      SkFullScreenLoader.stopLoading();
    }
  }


}
