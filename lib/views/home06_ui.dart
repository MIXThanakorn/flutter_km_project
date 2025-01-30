import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_km_project/widgets/show_a_ui.dart';
import 'package:flutter_km_project/widgets/show_b_ui.dart';
import 'package:flutter_km_project/widgets/show_c_ui.dart';
import 'package:flutter_km_project/widgets/show_d_ui.dart';

class Home06Ui extends StatefulWidget {
  const Home06Ui({super.key});

  @override
  State<Home06Ui> createState() => _Home06UiState();
}

class _Home06UiState extends State<Home06Ui> {
  int _selectedIndex = 2;

  List showUI = [
    ShowAUi(),
    ShowBUi(),
    ShowCUi(),
    ShowDUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(
          'KM BottomNavBar 02',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: SalomonBottomBar(
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.google),
            title: Text('Google'),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.line),
            title: Text('Line'),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.facebook),
            title: Text('Facebook'),
            selectedColor: Colors.blue,
          ),
          SalomonBottomBarItem(
            icon: Icon(FontAwesomeIcons.github),
            title: Text('Github'),
            selectedColor: Colors.black,
          ),
        ],
      ),
      body: showUI[_selectedIndex],
    );
  }
}
