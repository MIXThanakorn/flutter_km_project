import 'package:flutter/material.dart';
import 'package:flutter_km_project/views/%E0%B9%89home05_ui.dart';
import 'package:flutter_km_project/views/home03_ui.dart';
import 'package:flutter_km_project/views/home06_ui.dart';
import 'package:flutter_km_project/views/introduction_screen_ui.dart';
import 'package:flutter_km_project/views/splash_screen_ui.dart';

void main() {
  runApp(
    const FlutterKM(),
  );
}

class FlutterKM extends StatefulWidget {
  const FlutterKM({super.key});

  @override
  State<FlutterKM> createState() => _FlutterKMState();
}

class _FlutterKMState extends State<FlutterKM> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home06Ui(),
    );
  }
}
