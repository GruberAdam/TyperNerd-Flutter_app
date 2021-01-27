import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/navigation-bar_component.dart';

const GAME_NAVBAR_INDEX = 1;

class GamePage extends StatefulWidget {
  @override
  _GamePage createState() => _GamePage();
}

class _GamePage extends State<GamePage> {
  final inputController = TextEditingController();
  final displayController = TextEditingController();
  List<String> allEnglishWords = [];
  List<String> englishWordsUsed = [];
  int wordsWritten = 0;

  @override
  void initState() {
    super.initState();
    displayWords();
  }

  void getEnglishWords() async {
    final String response =
        await rootBundle.loadString('assets/english_words.json');
    var data = await json.decode(response);

    for (var i = 0; i < data["commonWords"].length; i++) {
      allEnglishWords.add(data["commonWords"][i]);
    }
  }

  void displayWords() async {
    await getEnglishWords();
    for (var i = 0; i < 100; i++) {
      displayController.text += allEnglishWords[i] + " ";
      englishWordsUsed.add(allEnglishWords[i]);
    }
  }

  void onChangedText(String text) {
    if (text.substring(text.length - 1) == " ") {
      print(text.substring(0, text.length - 1));
      if (text.substring(0, text.length - 1) ==
          englishWordsUsed[wordsWritten]) {
        print("Word is right");
      } else {
        print("Word is false");
      }
      wordsWritten++;
      inputController.clear();
    } else {}
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
                controller: displayController,
                minLines: 2,
                maxLines: 2,
                readOnly: true,
                style: TextStyle(color: Colors.white, fontSize: 20),
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
                controller: inputController,
                onChanged: (String value) {
                  onChangedText(value);
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                ),
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              margin: EdgeInsets.only(top: 30, left: 15, right: 15),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(GAME_NAVBAR_INDEX),
    );
  }
}
