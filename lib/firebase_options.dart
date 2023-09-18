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
    apiKey: 'AIzaSyCaB4LoR4AGmXAMGuF_r0vU8AMmvEPLOGY',
    appId: '1:679715985787:web:d69446547a8d6a34eb85de',
    messagingSenderId: '679715985787',
    projectId: 'sushiapi-a1466',
    authDomain: 'sushiapi-a1466.firebaseapp.com',
    storageBucket: 'sushiapi-a1466.appspot.com',
    measurementId: 'G-WL1MR7P6T5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFMXs6Tbm9Z1c4JpsEyRPrr96Q1WmML9w',
    appId: '1:679715985787:android:7e49a519d808ad06eb85de',
    messagingSenderId: '679715985787',
    projectId: 'sushiapi-a1466',
    storageBucket: 'sushiapi-a1466.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuaoj5hjpQVur19qt8c36nMEIbyhm9pDw',
    appId: '1:679715985787:ios:e9d5bf6edf570db2eb85de',
    messagingSenderId: '679715985787',
    projectId: 'sushiapi-a1466',
    storageBucket: 'sushiapi-a1466.appspot.com',
    iosBundleId: 'com.example.rentApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAuaoj5hjpQVur19qt8c36nMEIbyhm9pDw',
    appId: '1:679715985787:ios:e9d5bf6edf570db2eb85de',
    messagingSenderId: '679715985787',
    projectId: 'sushiapi-a1466',
    storageBucket: 'sushiapi-a1466.appspot.com',
    iosBundleId: 'com.example.rentApp',
  );
}