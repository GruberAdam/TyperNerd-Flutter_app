import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[700],
        child: Column(
          children: [
            Container(
              child: Text(
                "TyperNerd",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
                strutStyle: StrutStyle(fontSize: 40),
              ),
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 25),
              height: 100,
            ),
            Container(
              child: Text(
                "TyperNerd a été créé par deux développeurs pour pouvoir améliorer sa capacité en écriture sur mobile",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 100,
              margin: EdgeInsets.only(top: 45, left: 35, right: 35),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 200,
              margin: EdgeInsets.only(top: 45, left: 35, right: 35),
              color: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
