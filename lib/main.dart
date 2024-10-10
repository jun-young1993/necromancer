import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:necromancer/flame/necromancer_game.dart';
import 'package:necromancer/main_game_page.dart';
import 'package:necromancer/ui/screen/game_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'necromancer',
      home: MainGamePage()
    );
  }
}

