import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/splash_screen_ui.dart';

void main() {
  runApp(Flutter_KM());
}

class Flutter_KM extends StatefulWidget {
  const Flutter_KM({super.key});

  @override
  State<Flutter_KM> createState() => _Flutter_KMState();
}

class _Flutter_KMState extends State<Flutter_KM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
    );
  }
}
