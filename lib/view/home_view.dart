import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Currently on home page file"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text(
                "Title",
                style: TextStyle(fontSize: 25),
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.red,
            ),
            Container(
              child: Text(
                "Content",
                style: TextStyle(fontSize: 25),
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 250,
              margin: EdgeInsets.only(top: 45),
              color: Colors.yellow,
            ),
            Container(
              child: Text(
                "Footer content",
                style: TextStyle(fontSize: 25),
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.only(top: 45),
              color: Colors.blue,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
