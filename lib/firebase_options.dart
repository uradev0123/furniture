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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDAq8Kq973y0_VvjzGTzWo7IVqu91R9HnY',
    appId: '1:230630925543:web:abb89f7843133145ef6e42',
    messagingSenderId: '230630925543',
    projectId: 'furniture-803d6',
    authDomain: 'furniture-803d6.firebaseapp.com',
    storageBucket: 'furniture-803d6.appspot.com',
    measurementId: 'G-3YK3EYKZ4Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCb6ueaYmQXR4xy_8Tv_f2qNM1px0mf-Fw',
    appId: '1:230630925543:android:5b5613bebb9f6c29ef6e42',
    messagingSenderId: '230630925543',
    projectId: 'furniture-803d6',
    storageBucket: 'furniture-803d6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4pwzdA678X1So7lNn2zcoTMw1etY6Hfs',
    appId: '1:230630925543:ios:33662fcb628aca62ef6e42',
    messagingSenderId: '230630925543',
    projectId: 'furniture-803d6',
    storageBucket: 'furniture-803d6.appspot.com',
    iosBundleId: 'com.example.furniture',
  );
}
