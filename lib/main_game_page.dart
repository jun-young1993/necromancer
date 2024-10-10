import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:necromancer/flame/necromancer_game.dart';

class MainGamePage extends StatefulWidget {
  const MainGamePage({Key? key}): super(key: key);
  @override
  _MainGamePageState createState() => _MainGamePageState();

}

class _MainGamePageState extends State<MainGamePage> {
  NecromancerGame game = NecromancerGame();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      body: Stack(
        children: [
          GameWidget(
            game: game
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text('joyPad')
            )
          )
        ],
      )
    );
  }
}