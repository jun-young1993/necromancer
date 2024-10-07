import 'dart:ui';

import 'package:necromancer/states/monster/monster_state.dart';

class PlayerState {
  double health;
  double attackPower;
  Offset position; // 플레이어의 현재 위치
  double speed;

  PlayerState({
    required this.health,
    required this.attackPower,
    required this.position,
    required this.speed,
  });

  void move(Offset newPosition) {
    position = newPosition; // 플레이어의 위치를 업데이트
  }

  void takeDamage(double damage) {
    health -= damage;
    if (health <= 0) {
      die();
    }
  }

  void attack(MonsterState monster) {
    monster.takeDamage(attackPower);
  }

  void die() {
    print('플레이어가 죽었습니다');
    // 게임 오버 로직 추가
  }
}
