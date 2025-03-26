import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyADwq1vOO9UH76L8fIuqFWhL612ejEUzHA",
            authDomain: "arunsawad-th-application.firebaseapp.com",
            projectId: "arunsawad-th-application",
            storageBucket: "arunsawad-th-application.firebasestorage.app",
            messagingSenderId: "995211659711",
            appId: "1:995211659711:web:b97398d93423c3e74c390a",
            measurementId: "G-RJN6BVQM7S"));
  } else {
    await Firebase.initializeApp();
  }
}
