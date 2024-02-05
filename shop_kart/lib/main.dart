

import 'package:flutter/material.dart';

import 'package:shop_kart/app.dart';
import 'package:firebase_core/firebase_core.dart';

import 'firebase_options.dart';
///---entry of flutter apk----
Future<void> main() async {




  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


  runApp(const App());
}