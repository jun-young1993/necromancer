import 'package:flame/components.dart';
import 'package:flame/sprite.dart';

class Player extends SpriteAnimationComponent with HasGameRef{
  final double _playerSpeed = 300.0;
  final double _animationSpeed = 0.15;

  late final SpriteAnimation _standingAnimation;

  Player() : super(
    size: Vector2(24,32)
  );

  @override
  Future<void> onLoad() async {
    super.onLoad();
    await _loadAnimations().then((_) => { animation = _standingAnimation });
    
  }

  Future<void> _loadAnimations() async {
    final spriteSheet = SpriteSheet(
      image: await gameRef.images.load('work_necromancer-73x32.png'),
      srcSize: Vector2(24, 32)
    );
    _standingAnimation = spriteSheet.createAnimation(row:1, stepTime: _animationSpeed, to: 3);

  }

}