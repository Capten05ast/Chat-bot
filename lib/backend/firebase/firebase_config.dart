import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCIXk-72JYX6H6SkvjYhLM-iyA_EV2Z7W0",
            authDomain: "chatbot-ecd67.firebaseapp.com",
            projectId: "chatbot-ecd67",
            storageBucket: "chatbot-ecd67.appspot.com",
            messagingSenderId: "890538986097",
            appId: "1:890538986097:web:3ab8d823f03fce4d93a9d0"));
  } else {
    await Firebase.initializeApp();
  }
}
