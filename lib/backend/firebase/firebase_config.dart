import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBYsiij_C1RWAjAjIsnaNU3Xn4IbN33HTQ",
            authDomain: "chatdar-f894a.firebaseapp.com",
            projectId: "chatdar-f894a",
            storageBucket: "chatdar-f894a.appspot.com",
            messagingSenderId: "783110556655",
            appId: "1:783110556655:web:ece10a163c8bf1fb47c41a"));
  } else {
    await Firebase.initializeApp();
  }
}
