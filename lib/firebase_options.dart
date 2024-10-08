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
    apiKey: 'AIzaSyBgB1G0f6mb3dOlA19pqNnlBdI8qc1iaZs',
    appId: '1:963091345266:android:517fd9afef2f6056ee37eb',
    messagingSenderId: '963091345266',
    projectId: 'vtrack-a70b5',
    databaseURL: 'https://vtrack-a70b5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'vtrack-a70b5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCchrxzGkvPgMrDtjshL8LVdyHNlUUqXio',
    appId: '1:963091345266:ios:deac65e037b24627ee37eb',
    messagingSenderId: '963091345266',
    projectId: 'vtrack-a70b5',
    databaseURL: 'https://vtrack-a70b5-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'vtrack-a70b5.appspot.com',
    iosBundleId: 'com.example.shoppingAppTest',
  );
}
