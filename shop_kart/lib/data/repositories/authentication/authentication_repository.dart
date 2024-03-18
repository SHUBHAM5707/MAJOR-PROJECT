import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shop_kart/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shop_kart/features/authentication/screens/signup/verify_email.dart';
import 'package:shop_kart/navigation_menu.dart';

import '../../../features/authentication/screens/login/login.dart';
import '../../../utils/exceptions/firebase_auth_exceptions.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  ///variable
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  /// get auth user data
  User? get authUser => _auth.currentUser;



  ///called from main.dart on app launch
  @override
  void onReady() {
    //remove native splash
    FlutterNativeSplash.remove();
    //redirect to the appropriate screen
    screenRedirect();
  }

  ///function to show relevant  Screen
  void screenRedirect() async {
    final user = _auth.currentUser;
    if(user != null){
      if(user.emailVerified){
        Get.offAll(() => const NavigationMenu());
      }else{
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email));
      }
    }else {
      //local storage
      deviceStorage.writeIfNull('IsFirstTime', true);
      //check if first time launching
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const OnBoardingScreen());
    }

  }

/*---Email and password sign-in-----*/

  /// [email authentication]-sign-in

  Future<UserCredential> loginWithEmailAndPassword(String email,String password) async {
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SkFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const SkFormatException();
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }


  /// [Email authentication] - register
  Future<UserCredential> registerWithEmailAndPassword(String email,String password) async {
    try{
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw SkFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const SkFormatException();
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }



  ///[email verification]- mail verification
  Future<void> sendEmailVerification() async{
    try{
      return await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw SkFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const SkFormatException();
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }


  ///[email authentication]- forget password

  Future<void> sendPasswordResetEmail(String email) async{
    try{
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw SkFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const SkFormatException();
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }



  ///[Re authentication]- re Authentication





/*--- social login---*/

  ///[google authentication]-google
  Future<UserCredential> signInWithGoogle() async{
    try{
      //trigger auth flow
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      //obtain the auth detail from the request
      final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication;


      //create a new userid
      final credentials = GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken,idToken: googleAuth?.idToken);

      return await _auth.signInWithCredential(credentials);

    } on FirebaseAuthException catch (e) {
      throw SkFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const SkFormatException();
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }
  ///[google authentication]-facebook

/*---logout social sign*/

  ///[logoutUser]
  Future<void> logout() async{
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginScreen());
    } on FirebaseAuthException catch (e) {
      throw SkFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw SkFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const SkFormatException();
    } on PlatformException catch (e) {
      throw SkPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong.';
    }
  }

  ///delete-user
}
