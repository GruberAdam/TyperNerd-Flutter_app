import 'package:flutter/material.dart';
import 'components/navigation-bar_component.dart';

const SCORE_NAVBAR_INDEX = 2;

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Text(
                "TyperNerd",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                strutStyle: StrutStyle(fontSize: 40),
              ),
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 25),
              height: 100,
              color: Colors.red,
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
                              Text("Username : <Smeilys> \n"),
                              Text("Genre : <Male> \n"),
                              Text("Record : <100 WPM> \n"),
                              Text("Nb de tests : <50> \n"),
                              Text("Joue depuis : <30.04.2020>")
                            ],
                          ),
                          color: Colors.pink,
                          height: 200,
                          margin: EdgeInsets.only(left: 25),
                          padding:
                              EdgeInsets.only(left: 10, top: 10, right: 10),
                        ),
                        Container(
                          child: Text("WPM : <150>",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500)),
                          color: Colors.pink,
                          height: 50,
                          margin: EdgeInsets.only(bottom: 150, left: 30),
                          padding: EdgeInsets.only(right: 20, left: 10),
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    color: Colors.blue,
                    height: 250,
                  ),
                  Container(
                    child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) {
                            return Text(
                              "Historique",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            );
                          }
                          return InkWell(
                            child: ListTile(
                                title: Row(
                              children: <Widget>[
                                Expanded(child: Text("ID : <0>")),
                                Expanded(child: Text("WPM : <156>")),
                                Expanded(child: Text("Date :<30.04.02>")),
                              ],
                            )),
                          );
                        }),
                    color: Colors.purple,
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    margin: EdgeInsets.only(right: 25, left: 25, top: 10),
                    padding: EdgeInsets.only(left: 10),
                  )
                ],
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 400,
              margin: EdgeInsets.only(top: 45),
              color: Colors.yellow,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(SCORE_NAVBAR_INDEX),
    );
  }
}
