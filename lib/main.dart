import 'package:flutter/material.dart';

import 'package:quiz/quiz1.dart'; // your main app widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 🆕 Ensures bindings before Firebase init
            // 🆕 Initialize Firebase
  runApp(const Quiz());                     // 🆕 Use const if your Quiz widget supports it
}
