import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop_kart/app.dart';
import 'package:shop_kart/firebase_options.dart';

import 'data/repositories/authentication_repository.dart';



///---entry of flutter apk----
Future<void> main() async {
  ///widget binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  ///---GetX local storage
  await GetStorage.init();

  ///Await splash until other item load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  ///---initialize firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
          (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );


  runApp(const App());
}