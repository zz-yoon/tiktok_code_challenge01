import 'package:flutter/material.dart';
import 'package:tiktok_code_challenge01/screens/init_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitScreen(),
    );
  }
}

