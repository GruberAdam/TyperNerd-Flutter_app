import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currently on game page file"),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
