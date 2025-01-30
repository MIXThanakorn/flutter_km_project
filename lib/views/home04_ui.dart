import 'package:flutter/material.dart';

class Home04Ui extends StatefulWidget {
  const Home04Ui({super.key});

  @override
  State<Home04Ui> createState() => _Home04UiState();
}

class _Home04UiState extends State<Home04Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "DTI SAU Goodbye!",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
