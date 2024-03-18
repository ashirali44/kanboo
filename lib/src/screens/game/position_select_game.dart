import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/gradients.dart';
import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/buttons/round_button.dart';
import 'confirm_game.dart';
class GamePoistionSelect extends StatefulWidget {
  const GamePoistionSelect({super.key});

  @override
  State<GamePoistionSelect> createState() => _GamePoistionSelectState();
}

class _GamePoistionSelectState extends State<GamePoistionSelect> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Select Position",
            style: AppStyles.HEADING_STYLE.copyWith(fontSize: 18),
          ),
          centerTitle: true,

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Image.asset("assets/gameboard.png"),
          ],
        ).marginOnly(left: 20, right: 20),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: JoinButton(),
      ),
    );

  }

  Widget JoinButton(){
    return  RoundButtonGradient(
      svgLogo: 'email',
      withInBetween: 40,
      showBg: true,
      gradient: AppGradients.JoinGameBorder,
      bgGradient: AppGradients.RoundButtonBG ,
      onPress: () {
        Get.to(GameConfirmSelection());
      },
      gradientStroke: .3,
      logoOnly: true,
      text: 'Confirm',
    ).marginOnly(left: 20, right: 20,bottom: 10);
  }
}
