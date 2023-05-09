import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBo8OYC9gDvQV-Yo_5loRAKMq-o9QG3Xqs",
            authDomain: "spaceddy-flutterflow.firebaseapp.com",
            projectId: "spaceddy-flutterflow",
            storageBucket: "spaceddy-flutterflow.appspot.com",
            messagingSenderId: "812584750225",
            appId: "1:812584750225:web:37e6b13dc165516b7b0330",
            measurementId: "G-F1HZP50VEJ"));
  } else {
    await Firebase.initializeApp();
  }
}
