import 'package:flutter/material.dart';
import 'package:necromancer/states/player/player_state.dart'; // 기존 상태 관리 코드

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  // 플레이어 상태 초기화
  PlayerState player = PlayerState(
    health: 100,
    attackPower: 10,
    position: Offset(100, 100), // 초기 위치
    speed: 5,
  );

  void _onPanUpdate(DragUpdateDetails details) {
    // 드래그 시 이동한 만큼의 차이를 더해 플레이어 위치 업데이트
    setState(() {
      player.move(player.position + details.delta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 게임 필드 (전체 화면)
          GestureDetector(
            onPanUpdate: _onPanUpdate, // 드래그할 때 위치 변경
            child: Container(
              color: Colors.green, // 배경 색
              child: Stack(
                children: [
                  // 플레이어 캐릭터 (원형으로 표시)
                  Positioned(
                    left: player.position.dx - 25, // 위치
                    top: player.position.dy - 25,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue, // 플레이어 색상
                        shape: BoxShape.circle, // 원형 모양
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
