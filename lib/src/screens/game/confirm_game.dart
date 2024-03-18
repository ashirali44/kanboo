import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kanboo/src/constants/colors.dart';
import 'package:kanboo/src/screens/game/position_select_game.dart';

import '../../constants/gradients.dart';
import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/buttons/round_button.dart';
import '../../widgets/detail_widgets/date_widget.dart';
import '../../widgets/detail_widgets/description_widget.dart';
import '../../widgets/detail_widgets/name_spot_widget.dart';
import '../../widgets/detail_widgets/players_widget.dart';
import '../../widgets/detail_widgets/waiting_list_widget.dart';

class GameConfirmSelection extends StatefulWidget {
  const GameConfirmSelection({super.key});

  @override
  State<GameConfirmSelection> createState() => _GameConfirmSelectionState();
}

class _GameConfirmSelectionState extends State<GameConfirmSelection> {
  Widget build(BuildContext context) {
    return InputBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Game Details",
            style: AppStyles.HEADING_STYLE.copyWith(fontSize: 18),
          ),
          centerTitle: true,
          actions: [
            SvgPicture.asset(
              'assets/export_icon.svg',
              height: 30,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GameHeaderDetails(),
            DividerWidget(),
            GameDescriptionWidgetDetails().marginOnly(bottom: 20),
            DateWidgetGameDetails().marginOnly(bottom: 25),
            PlayerCount().marginOnly(bottom: 20),
            GamePlayerGrid(),
          ],
        ).marginOnly(left: 20, right: 20),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: JoinButton(),
      ),
    );
  }

  Widget DividerWidget() {
    return Divider(
      thickness: .2,
    );
  }

  Widget GamePlayerGrid() {
    return Expanded(
      child: PlayerGridView(
        players: List.generate(
          12,
              (index) => Player(
            name: 'Player ${index + 1}',
            imageUrl:
            'assets/player.png', // Replace with your actual image asset path
            number: index + 1,
            score: (index + 1) * 10,
          ),
        ),
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
       
      },
      gradientStroke: .3,
      logoOnly: true,
      text: 'Join Discord Channel',
    ).marginOnly(left: 20, right: 20,bottom: 10);
  }

  Widget PlayerCount(){
    return Text(' Players (12)',style: AppStyles.GAME_DETAILS_VIEW,);
  }
}
