import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

const GAME_NAVBAR_INDEX = 1;

class GamePage extends StatelessWidget {
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
                "WPM : <100>",
                style: TextStyle(fontSize: 25, color: Colors.white),
                strutStyle: StrutStyle(fontSize: 40),
              ),
              alignment: Alignment.centerRight,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(right: 70, top: 40),
            ),
            Container(
              child: TextFormField(
                minLines: 2,
                maxLines: 2,
                initialValue:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque consectetur urna, nec sodales arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lacus diam, accumsan sed urna id, imperdiet pulvinar sapien. Aliquam at nibh sed purus viverra pretium eu eget dolor. Cras id lectus eu velit mattis feugiat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec vehicula sit amet enim in vehicula. Fusce iaculis accumsan nisi nec fringilla. Duis iaculis elit sit amet nibh finibus euismod. Vestibulum eu ornare felis. Morbi consequat commodo erat vel tempor. Mauris auctor pellentesque massa, non fermentum tortor cursus eu. Donec quis dolor ut lacus viverra semper. Etiam ut consectetur dui, id mattis sem. Duis nec magna a ipsum maximus aliquet vitae ut ex. ",
                readOnly: true,
                style: TextStyle(color: Colors.grey[500], fontSize: 20),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              margin: EdgeInsets.only(top: 25, left: 15, right: 15),
            ),
            Container(
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
              margin: EdgeInsets.only(top: 30, left: 15, right: 15),
            ),
          ],
        ),
      ),
      body: Text("Currently in the game file"),
      bottomNavigationBar: BottomNavBar(GAME_NAVBAR_INDEX),
    );
  }
}
