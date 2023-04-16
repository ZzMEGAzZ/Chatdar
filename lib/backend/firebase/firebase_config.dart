import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBqbSKJ2OxeLCPa5gEXy3_3wVuNP5scmJA",
            authDomain: "chatdarv2.firebaseapp.com",
            projectId: "chatdarv2",
            storageBucket: "chatdarv2.appspot.com",
            messagingSenderId: "1066339506605",
            appId: "1:1066339506605:web:79026e76ff6dd9f1d26924"));
  } else {
    await Firebase.initializeApp();
  }
}
