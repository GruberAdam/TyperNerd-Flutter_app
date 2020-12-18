import 'package:flutter/material.dart';
import 'package:myapp/view/game_view.dart';
import '../score_view.dart';
import '../home_view.dart';

class BottomNavBar extends StatefulWidget {
  final selectedIndex;
  BottomNavBar(this.selectedIndex);

  @override
  _BottomNavBarState createState() => _BottomNavBarState(selectedIndex);
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex;

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

  _BottomNavBarState(int index) {
    this.selectedIndex = index;
  }

  void onItemTaped(int index) {
    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });

      String indexLabel = navBarItems[index].label;

      switch (indexLabel) {
        case "Home":
          {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
            break;
          }
        case "Game":
          {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => GamePage()));
            break;
          }
        case "Score":
          {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => ScorePage()));
            break;
          }
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
