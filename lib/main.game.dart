import 'package:flame/game.dart';
import 'package:necromancer/components/background.dart';
import 'package:necromancer/components/player.dart';

class MainGame extends FlameGame {
  final Player _player = Player();
  final Background _background = Background();
  @override
  Future<void> onLoad() async {
    super.onLoad();
    add(_background);
    add(_player);
    await _background.onLoad();
    
  }


}