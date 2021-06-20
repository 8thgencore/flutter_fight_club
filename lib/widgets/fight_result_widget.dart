import 'package:flutter/material.dart';
import 'package:flutter_fight_club/fight_result.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';
import 'package:flutter_fight_club/resources/fight_club_images.dart';

class FightResultWidget extends StatelessWidget {
  final FightResult fightResult;

  const FightResultWidget({
    Key? key,
    required this.fightResult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ColoredBox(color: FightClubColors.backgroundYou),
              ),
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    FightClubColors.backgroundYou,
                    FightClubColors.backgroundEnemy
                  ])),
                ),
              ),
              Expanded(
                child: ColoredBox(color: FightClubColors.backgroundEnemy),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  const SizedBox(height: 12),
                  Text(
                    "You",
                    style: TextStyle(color: FightClubColors.darkGreyText),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    FightClubImages.youAvatar,
                    height: 92,
                    width: 92,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: _getColor(fightResult),
                ),
                child: Text(
                  fightResult.result.toLowerCase(),
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 12),
                  Text(
                    "Enemy",
                    style: TextStyle(color: FightClubColors.darkGreyText),
                  ),
                  const SizedBox(height: 10),
                  Image.asset(
                    FightClubImages.enemyAvatar,
                    height: 92,
                    width: 92,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Color? _getColor(FightResult fightResult) {
    switch (fightResult) {
      case FightResult.won:
        return Color(0xFF038800);
      case FightResult.lost:
        return Color(0xFFEA2C2C);
      case FightResult.draw:
        return FightClubColors.blueButton;
    }
  }
}
