import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> bottomNavPages = [
    const Text("Home"),
    const Text("Search"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavPages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff182545),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        items: [
          _bottomNavItem(Icons.play_arrow, "Listen"),
          _bottomNavItem(Icons.favorite, "Favorite")
        ],
        onTap: onTapEvent,
      ),
    );
  }

  void onTapEvent(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  BottomNavigationBarItem _bottomNavItem(IconData icons, String text) {
    return BottomNavigationBarItem(icon: Icon(icons), label: text);
  }
}
