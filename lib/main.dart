import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // 🆕 Firebase core import
import 'package:quiz/quiz1.dart'; // your main app widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 🆕 Ensures bindings before Firebase init
  await Firebase.initializeApp();           // 🆕 Initialize Firebase
  runApp(const Quiz());                     // 🆕 Use const if your Quiz widget supports it
}
