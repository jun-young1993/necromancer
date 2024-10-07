import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:necromancer/flame/necromancer_game.dart';
import 'package:necromancer/ui/screen/game_screen.dart';

void main() {
  runApp(GameWidget(
    game: NecromancerGame()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: GameScreen(),
    );
  }
}
