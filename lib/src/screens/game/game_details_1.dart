import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kanboo/src/constants/colors.dart';

import '../../constants/styles.dart';
import '../../widgets/background.dart';

class GameDetailsViewScreen extends StatefulWidget {
  const GameDetailsViewScreen({super.key});

  @override
  State<GameDetailsViewScreen> createState() => _GameDetailsViewScreenState();
}

class _GameDetailsViewScreenState extends State<GameDetailsViewScreen> {
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
              GameHeader()
            ],
          ).marginOnly(left: 20,right: 20)),
    );
  }

  Widget GameHeader(){
    return Row(
      children: [
        Expanded(
          child: Text('Montjuic F7',style: AppStyles.GAME_DETAILS_VIEW.copyWith(

          ),),
        ),
        Container(
          padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
          decoration: BoxDecoration(
              border: const GradientBoxBorder(
                gradient:  LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffFFE600),
                    Color(0xff48A7FF)
                  ],
                ),
                width: .2,

              ),
            borderRadius: BorderRadius.circular(20),
            color: AppColors.WHITE_COLOR.withOpacity(.06)
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/players.svg',
                height: 20,
              ),
              SizedBox(width: 05,),
              Text('Full',style: AppStyles.DESCRIPTION_STYLE.copyWith(
                color: Colors.white
              ),)
            ],
          ),
        )
      ],
    ).marginOnly(top: 10,bottom: 10);
  }
}
