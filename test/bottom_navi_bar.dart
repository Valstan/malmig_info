import 'package:flutter/material.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar:
    BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Лента',
          backgroundColor: Colors.redAccent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.newspaper),
          label: 'Малмыж',
          backgroundColor: Colors.cyan,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          label: 'Кругозор',
          backgroundColor: Colors.deepPurple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Настройки',
          backgroundColor: Colors.brown,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    ),
    );
  }
}
