import 'package:earthsweeper/widgets/mine_sweeper.dart';
import 'package:flutter/material.dart';

import 'models/game.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: "MSSansSerif"),
        home: Scaffold(
          body: Container(
              child: MineSweeper(
                gameModel: Game(
                  type: GameType.custom,
                  width: 5,
                  height: 5,
                  mineCount: 10,
                ),
              )),
            ));
  }
}
