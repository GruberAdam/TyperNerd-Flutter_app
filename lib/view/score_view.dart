import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

const SCORE_NAVBAR_INDEX = 2;

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Container(
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
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Username : <Smeilys> \n",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text("Genre : <Male> \n",
                                  style: TextStyle(color: Colors.white)),
                              Text("Record : <100 WPM> \n",
                                  style: TextStyle(color: Colors.white)),
                              Text("Nb de tests : <50> \n",
                                  style: TextStyle(color: Colors.white)),
                              Text("Joue depuis : <30.04.2020>",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)),
                          height: 200,
                          margin: EdgeInsets.only(left: 15),
                          padding:
                              EdgeInsets.only(left: 10, top: 10, right: 10),
                        ),
                        Container(
                          child: Text("WPM : <150>",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white)),
                          height: 50,
                          margin: EdgeInsets.only(bottom: 150, left: 10),
                          padding: EdgeInsets.only(right: 20, left: 10),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    height: 250,
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Container(
                    child: Text(
                      "Historique de partie",
                      style: TextStyle(color: Colors.white),
                    ),
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 475,
              margin: EdgeInsets.only(top: 10, left: 15, right: 15),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(SCORE_NAVBAR_INDEX),
    );
  }
}
