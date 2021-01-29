import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'game_view.dart';
import 'components/navigation-bar_component.dart';

const HOME_NAVBAR_INDEX = 0;

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  void navigateToGamePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GamePage()));
  }

  void exitApp() {
    SystemNavigator.pop();
  }

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
              child: ButtonTheme(
                  height: 75,
                  minWidth: 300,
                  child: RaisedButton(
                    onPressed: navigateToGamePage,
                    child: Text('Play',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  )),
              margin: EdgeInsets.only(top: 75),
            ),
            Container(
              child: ButtonTheme(
                  buttonColor: Colors.red,
                  height: 75,
                  minWidth: 300,
                  child: RaisedButton(
                    onPressed: exitApp,
                    child: Text('Exit',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  )),
              margin: EdgeInsets.only(top: 45),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(HOME_NAVBAR_INDEX),
    );
  }
}
