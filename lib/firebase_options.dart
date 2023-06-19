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
    apiKey: 'AIzaSyCG5HqcpRt5VC-pOoddUIwp3EXTan0DizY',
    appId: '1:986616486894:web:ba0decbf3889725a1eccff',
    messagingSenderId: '986616486894',
    projectId: 'redbook-7c6d1',
    authDomain: 'redbook-7c6d1.firebaseapp.com',
    storageBucket: 'redbook-7c6d1.appspot.com',
    measurementId: 'G-78EBT3QPJS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA88Bn2NGSVzw_f9Ttoy-COqezPO074KaY',
    appId: '1:986616486894:android:a58fcfc93662efce1eccff',
    messagingSenderId: '986616486894',
    projectId: 'redbook-7c6d1',
    storageBucket: 'redbook-7c6d1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJzMdgZzdTcKTkorBPuWYLi1Jpnl2OHgI',
    appId: '1:986616486894:ios:40bd10cc6ddb30be1eccff',
    messagingSenderId: '986616486894',
    projectId: 'redbook-7c6d1',
    storageBucket: 'redbook-7c6d1.appspot.com',
    iosClientId: '986616486894-d06v81sj40r685k77jaqi0snlgobsn5m.apps.googleusercontent.com',
    iosBundleId: 'com.example.deneme1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJzMdgZzdTcKTkorBPuWYLi1Jpnl2OHgI',
    appId: '1:986616486894:ios:40bd10cc6ddb30be1eccff',
    messagingSenderId: '986616486894',
    projectId: 'redbook-7c6d1',
    storageBucket: 'redbook-7c6d1.appspot.com',
    iosClientId: '986616486894-d06v81sj40r685k77jaqi0snlgobsn5m.apps.googleusercontent.com',
    iosBundleId: 'com.example.deneme1',
  );
}
