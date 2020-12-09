import 'package:flutter/material.dart';
import './view/home_view.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Say wassa", home: HomePage());
  }
}
