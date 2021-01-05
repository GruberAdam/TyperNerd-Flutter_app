import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

const GAME_NAVBAR_INDEX = 1;

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currently on game page file"),
      ),
      body: Text("Currently in the game file"),
      bottomNavigationBar: BottomNavBar(GAME_NAVBAR_INDEX),
    );
  }
}
