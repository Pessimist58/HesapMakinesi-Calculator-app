// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyCaoEVr7qFp7wutdzD-ALC6NvcChp0b5Zk',
    appId: '1:716623382284:web:8eaf1d77f570ed72c3eb29',
    messagingSenderId: '716623382284',
    projectId: 'hesap-makinesi-app5834',
    authDomain: 'hesap-makinesi-app5834.firebaseapp.com',
    storageBucket: 'hesap-makinesi-app5834.appspot.com',
    measurementId: 'G-G97V7FLZF2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWv4k9UqQcXcWlJovBToOVRmiW2B4_AWU',
    appId: '1:716623382284:android:22339bf7b4280bf0c3eb29',
    messagingSenderId: '716623382284',
    projectId: 'hesap-makinesi-app5834',
    storageBucket: 'hesap-makinesi-app5834.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDn6PAl28mWMmdv_UogGqG6T2UujiW0HEA',
    appId: '1:716623382284:ios:29af3eaf9e950f62c3eb29',
    messagingSenderId: '716623382284',
    projectId: 'hesap-makinesi-app5834',
    storageBucket: 'hesap-makinesi-app5834.appspot.com',
    iosBundleId: 'com.example.hesapMakinesiApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDn6PAl28mWMmdv_UogGqG6T2UujiW0HEA',
    appId: '1:716623382284:ios:29af3eaf9e950f62c3eb29',
    messagingSenderId: '716623382284',
    projectId: 'hesap-makinesi-app5834',
    storageBucket: 'hesap-makinesi-app5834.appspot.com',
    iosBundleId: 'com.example.hesapMakinesiApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCaoEVr7qFp7wutdzD-ALC6NvcChp0b5Zk',
    appId: '1:716623382284:web:0e24e737aacde91bc3eb29',
    messagingSenderId: '716623382284',
    projectId: 'hesap-makinesi-app5834',
    authDomain: 'hesap-makinesi-app5834.firebaseapp.com',
    storageBucket: 'hesap-makinesi-app5834.appspot.com',
    measurementId: 'G-Q1XYB2XRNS',
  );
}
