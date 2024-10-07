import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class NecromancerGame extends FlameGame {
  late SpriteAnimationComponent necromancer;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    // 스프라이트 시트 로드
    final necromancerSpriteSheet = await Flame.images.load('work_necromancer.webp');
    
    // 스프라이트 시트의 각 프레임 크기 (예: 64x64)
    final spriteSize = Vector2(64, 64);

    // 스프라이트 애니메이션 설정 (예: 프레임 4개)
    final animation = SpriteAnimation.fromFrameData(
      necromancerSpriteSheet,
      SpriteAnimationData.sequenced(
        amount: 4, // 프레임 수
        stepTime: 0.1, // 각 프레임이 지속되는 시간 (초)
        textureSize: spriteSize, // 각 프레임의 크기
      ),
    );

    // 애니메이션 컴포넌트 생성
    necromancer = SpriteAnimationComponent()
      ..animation = animation
      ..size = spriteSize
      ..position = Vector2(100, 100); // 캐릭터의 초기 위치

    add(necromancer); // 게임에 캐릭터 추가
  }
}

void main() {
  runApp(GameWidget(game: NecromancerGame()));
}
