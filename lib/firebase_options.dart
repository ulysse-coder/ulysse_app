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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBdZSowFmREAb8o6LVP151BALplHQds71I',
    appId: '1:282323374084:android:a479b4d0795b6d5f73e551',
    messagingSenderId: '282323374084',
    projectId: 'ulysse-app-8496c',
    storageBucket: 'ulysse-app-8496c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAByWHP_q_KPH57aTmmEHTD8Jb-T5TsGP8',
    appId: '1:282323374084:ios:0f767bb421a48d6873e551',
    messagingSenderId: '282323374084',
    projectId: 'ulysse-app-8496c',
    storageBucket: 'ulysse-app-8496c.appspot.com',
    androidClientId: '282323374084-s5538g7t9dfdjm1qnngg9nrqt03oqgiu.apps.googleusercontent.com',
    iosClientId: '282323374084-u569b9rver48hng2nh2l39mmc70n4p89.apps.googleusercontent.com',
    iosBundleId: 'com.example.ulysseApp',
  );
}