import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

class Background extends SpriteComponent with HasGameRef {
  final double _backgroundSpeed = 100.0;

  Background() : super(
    size: Vector2(1792,1024),
    priority: 0,
  );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    sprite = await gameRef.loadSprite('background_1.png');
    size = sprite!.originalSize;
  }

}