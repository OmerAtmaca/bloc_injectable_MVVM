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
    apiKey: 'AIzaSyCt1Dx5VAPIiJr626ziizNtFL-T5_lQVds',
    appId: '1:986996791056:web:1ef28a8077bd4365327795',
    messagingSenderId: '986996791056',
    projectId: 'tofasspor',
    authDomain: 'tofasspor.firebaseapp.com',
    databaseURL: 'https://tofasspor-default-rtdb.firebaseio.com',
    storageBucket: 'tofasspor.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnADQfbdNkX5IIJdoqJX0Xc-Vtx7YnjCc',
    appId: '1:986996791056:android:b63fa75f56acd22c327795',
    messagingSenderId: '986996791056',
    projectId: 'tofasspor',
    databaseURL: 'https://tofasspor-default-rtdb.firebaseio.com',
    storageBucket: 'tofasspor.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnVJuUnPlParJ786Au3KA5W9jzakCs_tI',
    appId: '1:986996791056:ios:dba3ae2d77b3fc87327795',
    messagingSenderId: '986996791056',
    projectId: 'tofasspor',
    databaseURL: 'https://tofasspor-default-rtdb.firebaseio.com',
    storageBucket: 'tofasspor.appspot.com',
    iosClientId:
        '986996791056-o58k93bj85aeer2m4molo7mac6aetr72.apps.googleusercontent.com',
    iosBundleId: 'com.example.tofasSporOkullari',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDnVJuUnPlParJ786Au3KA5W9jzakCs_tI',
    appId: '1:986996791056:ios:62382a918c41834b327795',
    messagingSenderId: '986996791056',
    projectId: 'tofasspor',
    databaseURL: 'https://tofasspor-default-rtdb.firebaseio.com',
    storageBucket: 'tofasspor.appspot.com',
    iosClientId:
        '986996791056-o5lop813v5785o9u5q9i7h4tadd81hti.apps.googleusercontent.com',
    iosBundleId: 'com.example.tofasSporOkullari.RunnerTests',
  );
}
