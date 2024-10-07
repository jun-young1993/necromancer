import 'dart:ui';

import 'package:necromancer/states/player/player_state.dart';

class MonsterState {
  double health;
  double attackPower;
  Offset position;
  double speed;

  MonsterState({
    required this.health,
    required this.attackPower,
    required this.position,
    required this.speed,
  });

  void move(Offset newPosition) {
    position = newPosition; // 몬스터의 위치 업데이트
  }

  void takeDamage(double damage) {
    health -= damage;
    if (health <= 0) {
      die();
    }
  }

  void attack(PlayerState player) {
    player.takeDamage(attackPower);
  }

  void die() {
    print('몬스터가 죽었습니다');
    // 언데드로 소환 로직 추가 예정
  }
}
