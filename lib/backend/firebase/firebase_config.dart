import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCYtd8QU2Io15WW90B1C_LlHj0bL1e5H8M",
            authDomain: "la-zompopa-pizzeria.firebaseapp.com",
            projectId: "la-zompopa-pizzeria",
            storageBucket: "la-zompopa-pizzeria.firebasestorage.app",
            messagingSenderId: "929285184634",
            appId: "1:929285184634:web:1ca5a16042c4e846516fc3",
            measurementId: "G-D6T3WPBLZP"));
  } else {
    await Firebase.initializeApp();
  }
}
