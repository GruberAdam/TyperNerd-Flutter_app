import 'package:flutter/material.dart';
import '../components/navigation-bar_component.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currently on home page file"),
      ),
      body: Text("YO"),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
