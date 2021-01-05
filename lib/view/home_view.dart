import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

const HOME_NAVBAR_INDEX = 0;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currently on home page file"),
      ),
      body: Text("Currently in the home file"),
      bottomNavigationBar: BottomNavBar(HOME_NAVBAR_INDEX),
    );
  }
}
