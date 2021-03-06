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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDIwIa48pv7Ti1ctDs015nk_BE62a7rH1s',
    appId: '1:229752042967:web:480e3cd6b5f8f9c5138792',
    messagingSenderId: '229752042967',
    projectId: 'flutternews-d6de4',
    authDomain: 'flutternews-d6de4.firebaseapp.com',
    storageBucket: 'flutternews-d6de4.appspot.com',
    measurementId: 'G-2049NKY7PN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBFrDC2005-xLAB-MrC-UkUdDsxQ7I3tC0',
    appId: '1:229752042967:android:9ee96148ea1ffb9f138792',
    messagingSenderId: '229752042967',
    projectId: 'flutternews-d6de4',
    storageBucket: 'flutternews-d6de4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDDltjsJnH7jUkRtgMGC_6ypB_wEFKn0HM',
    appId: '1:229752042967:ios:b8f84ab6eaa08148138792',
    messagingSenderId: '229752042967',
    projectId: 'flutternews-d6de4',
    storageBucket: 'flutternews-d6de4.appspot.com',
    androidClientId: '229752042967-07obntdjvho0a8iqsebfgk74scp7eumk.apps.googleusercontent.com',
    iosClientId: '229752042967-40rgrli9fagfropo2nhal8pf4ddt5ud7.apps.googleusercontent.com',
    iosBundleId: 'flutternews-d6de4',
  );
}
