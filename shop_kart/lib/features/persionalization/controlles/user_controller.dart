import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shop_kart/data/repositories/user/user_repository.dart';
import 'package:shop_kart/utils/popups/loaders.dart';

import '../../authentication/models/user_model.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final profileLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());


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
              'something went wrong while saving Data,please re enter data');
    }
  }
}
