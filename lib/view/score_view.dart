import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currently on score page file"),
      ),
      body: Text("Currently in the score file"),
      bottomNavigationBar: BottomNavBar(2),
    );
  }
}
