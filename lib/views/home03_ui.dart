import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_km_project/views/home04_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home03Ui extends StatefulWidget {
  const Home03Ui({super.key});

  @override
  State<Home03Ui> createState() => _Home03UiState();
}

class _Home03UiState extends State<Home03Ui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "DTI SAU Hello",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Kanit',
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
          ),
          IconButton(
            onPressed: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else {
                exit(0);
              }
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.red[400],
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home04Ui(),
                ),
              );
            },
            child: Text(
              "Go to Home04",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Kanit',
              ),
            ),
          )
        ],
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Southeast Asia University"),
                accountEmail: Text("www.sau.ac.th"),
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/47/4b/07/474b079606c7148c972ebd0b6e2102aa.jpg',
                  ),
                ),
                otherAccountsPictures: [
                  Image.asset('assets/images/pic01.png'),
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  )
                ]),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.home,
              ),
              trailing: Icon(
                Icons.numbers,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              subtitle: Text(
                'หน้าหลัก',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.heart_broken_sharp,
                color: Colors.red,
              ),
              title: Text(
                'Favorite',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  color: Colors.red,
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              title: Text(
                'Google กูเกิ้ล',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'Go to',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.line,
                color: Colors.green,
              ),
              title: Text(
                'Line ไลน์',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'Go to',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Icon(
                FontAwesomeIcons.ebay,
              ),
              title: Text(
                'Ebay อีเบย์',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
              trailing: Text(
                'Go to',
                style: TextStyle(
                  fontFamily: 'Kanit',
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
