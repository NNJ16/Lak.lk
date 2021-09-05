import 'package:flutter/material.dart';
import 'package:lak_app/constant/constants.dart';
import 'package:lak_app/screens/ads/post_screen.dart';
import 'package:lak_app/screens/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _body = [
    HomeScreen(),
    HomeScreen(),
    PostScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: kPrimaryColor,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black54,
        backgroundColor: ksecondaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reorder),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Post Ad",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Settings"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
