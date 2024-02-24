import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC6vTQrK6_kZleZchFoMiCMwpl2GDS4LTg",
            authDomain: "cs125-e3b45.firebaseapp.com",
            projectId: "cs125-e3b45",
            storageBucket: "cs125-e3b45.appspot.com",
            messagingSenderId: "361527405801",
            appId: "1:361527405801:web:f8de046e96103bc128d478",
            measurementId: "G-8BD1E0X2T2"));
  } else {
    await Firebase.initializeApp();
  }
}
