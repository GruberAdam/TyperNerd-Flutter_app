import 'package:flutter/material.dart';
import 'package:myapp/view/game_view.dart';
import '../score_view.dart';
import '../home_view.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;

  static const List<BottomNavigationBarItem> navBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.business),
      label: 'Game',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.school),
      label: 'Score',
    ),
  ];

  void onItemTaped(int index) {
    setState(() {
      selectedIndex = index;
    });

    String indexLabel = navBarItems[index].label;

    switch (indexLabel) {
      case "Home":
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
          break;
        }
      case "Game":
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GamePage()));
          break;
        }
      case "Score":
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScorePage()));
          break;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: navBarItems,
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: onItemTaped,
    );
  }
}
