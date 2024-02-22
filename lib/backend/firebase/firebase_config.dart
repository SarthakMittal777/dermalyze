import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8btlqXqEOvFqCJZ5ISbuZe-8nRPEEhcw",
            authDomain: "sample-task-app-y8buax.firebaseapp.com",
            projectId: "sample-task-app-y8buax",
            storageBucket: "sample-task-app-y8buax.appspot.com",
            messagingSenderId: "929951003693",
            appId: "1:929951003693:web:b64ba13bb86ed9fea034a4"));
  } else {
    await Firebase.initializeApp();
  }
}
