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
    apiKey: 'AIzaSyCHzRPN1HjRCd-lZERANYSdoXOpzhHzNyY',
    appId: '1:653820264059:android:cec19d90eda0e8d269ecde',
    messagingSenderId: '653820264059',
    projectId: 'login-setup-8cc0c',
    storageBucket: 'login-setup-8cc0c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDizw6qTb-2LCz_p43RdXtXLuBdV1EY46c',
    appId: '1:653820264059:ios:445b793905f29f3a69ecde',
    messagingSenderId: '653820264059',
    projectId: 'login-setup-8cc0c',
    storageBucket: 'login-setup-8cc0c.appspot.com',
    androidClientId: '653820264059-iepli34jdhog9rrpsmt8v9vug4vpehul.apps.googleusercontent.com',
    iosClientId: '653820264059-hsvqutov1tpigfuaa7r8uimlgul6oda0.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginSetup',
  );
}
