// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBivvzFioQ1Sppr_x_M8AzBpInLkyb4klU',
    appId: '1:558753841405:web:0366dddd31f3a02df57e94',
    messagingSenderId: '558753841405',
    projectId: 'shop-kart-a6966',
    authDomain: 'shop-kart-a6966.firebaseapp.com',
    storageBucket: 'shop-kart-a6966.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhQWLq16hnhnNfwasRbHup2EaYaKIDMg4',
    appId: '1:558753841405:android:9f3db0bc0667d3c5f57e94',
    messagingSenderId: '558753841405',
    projectId: 'shop-kart-a6966',
    storageBucket: 'shop-kart-a6966.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAYosv9B5UrogI9cSAVlqRteI0WkIqdmI',
    appId: '1:558753841405:ios:b669c0bf354a9409f57e94',
    messagingSenderId: '558753841405',
    projectId: 'shop-kart-a6966',
    storageBucket: 'shop-kart-a6966.appspot.com',
    androidClientId: '558753841405-c71sp5nvhtko2f9is826oi772fgade2g.apps.googleusercontent.com',
    iosClientId: '558753841405-884a4vbg70m3lp7ktbbdkrtupqms693p.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopKart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAYosv9B5UrogI9cSAVlqRteI0WkIqdmI',
    appId: '1:558753841405:ios:8224c9bf30dfb111f57e94',
    messagingSenderId: '558753841405',
    projectId: 'shop-kart-a6966',
    storageBucket: 'shop-kart-a6966.appspot.com',
    androidClientId: '558753841405-c71sp5nvhtko2f9is826oi772fgade2g.apps.googleusercontent.com',
    iosClientId: '558753841405-qn7t8f32jrdpd4lkgv5fa5n3rn2lpo16.apps.googleusercontent.com',
    iosBundleId: 'com.example.shopKart.RunnerTests',
  );
}
