import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/navigation-bar_component.dart';
import 'package:rich_text_controller/rich_text_controller.dart';
import 'dart:async';

const GAME_NAVBAR_INDEX = 1;

class GamePage extends StatefulWidget {
  @override
  _GamePage createState() => _GamePage();
}

class _GamePage extends State<GamePage> {
  final inputController = TextEditingController();
  RichTextController displayController;

  List<String> allEnglishWords = [];
  List<String> englishWordsUsed = [];
  int wordsWritten = 0;
  int rightWords = 0;
  int falseWords = 0;

  bool inputIsClickable = true;

  bool isPlaying = false;
  Timer timer;
  int timerStart = 30;

  int WPM = 0;

  @override
  void initState() {
    displayWords();
    displayController = RichTextController(stringMap: {
      "String1": TextStyle(color: Colors.red),
    }, onMatch: (List<String> matches) {});

    super.initState();
  }

  void getEnglishWords() async {
    final String response =
        await rootBundle.loadString('assets/english_words.json');
    var data = await json.decode(response);

    for (var i = 0; i < data["commonWords"].length; i++) {
      allEnglishWords.add(data["commonWords"][i]);
    }
  }

  void resetGame() {
    setState(() {
      timer.cancel();
      inputController.clear();
      displayController.clear();
      englishWordsUsed = [];
      allEnglishWords = [];
      wordsWritten = 0;
      rightWords = 0;
      falseWords = 0;
      inputIsClickable = true;
      isPlaying = false;
      WPM = 0;
      timerStart = 30;
    });

    displayWords();
  }

  void displayWords() async {
    await getEnglishWords();
    for (var i = 0; i < 100; i++) {
      displayController.text += allEnglishWords[i] + " ";
      englishWordsUsed.add(allEnglishWords[i]);
    }
  }

  void computeWordPerMinute() {
    setState(() {
      WPM = rightWords * 2;
    });
  }

  void updateTimer() {
    isPlaying = true;
    const oneSec = const Duration(seconds: 1);
    timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (timerStart == 0) {
          setState(() {
            inputIsClickable = false;
            timer.cancel();
          });
        } else {
          setState(() {
            timerStart--;
          });
        }
      },
    );
  }

  void onChangedText(String text) {
    if (isPlaying == false) {
      updateTimer();
    }
    if (text.substring(text.length - 1) == " ") {
      String wordWritten =
          inputController.text.substring(0, inputController.text.length - 1);
      String expectedWord = englishWordsUsed[wordsWritten];

      print(
          "Written : (" + wordWritten + ") Expected : (" + expectedWord + ")");

      if (wordWritten == expectedWord) {
        print("Word is right");
        rightWords++;
      } else {
        print("Word is false");
        falseWords++;
      }
      computeWordPerMinute();
      displayController.text =
          displayController.text.substring(expectedWord.length + 1);
      wordsWritten++;
      inputController.clear();
    }
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
                "$timerStart",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              children: [
                Container(
                  child: Text(
                    "WPM : $WPM",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                    strutStyle: StrutStyle(fontSize: 30),
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(
                    left: 15,
                  ),
                ),
                Container(
                  child: RaisedButton(
                    color: Colors.black,
                    onPressed: resetGame,
                    child: Text('Reset game',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  margin: EdgeInsets.only(left: 155),
                )
              ],
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
                readOnly: !inputIsClickable,
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
