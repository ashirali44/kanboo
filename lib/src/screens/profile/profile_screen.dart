import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kanboo/src/constants/styles.dart';
import 'package:kanboo/src/screens/profile/settings_screen.dart';

import '../../constants/gradients.dart';
import '../../widgets/background.dart';
import '../../widgets/settings_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InputBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              TitleWdiget(),
              AboutmeDetails(),
              Stats(),
            ],
          ),
          InkWell(
            onTap: (){
              Get.to(
                  SettingsScreen()
              );
            },
            child: SettingListTileItem(
              text: 'Settings',
              prefixIcon: 'logout',
            ).marginOnly(bottom: 10),
          ),

        ],
      ).marginOnly(left: 20, right: 20, top: 50),
    );
  }

  Widget AboutmeDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: AppStyles.GAME_DETAILS_VIEW.copyWith(),
        ).marginOnly(bottom: 15),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tortor arcu, gravida ac.',
          style: AppStyles.DESCRIPTION_STYLE,
        ).marginOnly(bottom: 15),
        Divider(
          thickness: .2,
        )
      ],
    ).marginOnly(top: 30, bottom: 15);
  }

  Widget TitleWdiget() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.7),
        borderRadius: BorderRadius.circular(20),
        border: GradientBoxBorder(
          gradient: AppGradients.JoinGameBorder,
          width: .5,
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          transform: GradientRotation(200 / 4),
          colors: [
            Color(0xff005CE5),
            Color(0xffA95C81),
            Color(0xffFFBE5C),
          ],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jordi",
                style: AppStyles.HEADING_STYLE,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/jersy.svg',
                    height: 20,
                  ),
                  SizedBox(
                    width: 05,
                  ),
                  Text(
                    "Favourite Position: Defender",
                    style: AppStyles.DESCRIPTION_STYLE.copyWith(fontSize: 18),
                  )
                ],
              )
            ],
          ),
          InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/messages_white.svg',
                height: 30,
                color: Colors.white,
              ).marginOnly(top: 10))
        ],
      ),
    );
  }

  Widget Stats() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.06),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Statistics',
            style: AppStyles.HEADING_STYLE,
          ).marginOnly(bottom: 15),
          Row(
            children: [
              SingeStat('Games', '66'),
              SingeStat('Won', '66'),
              SingeStat('Goals', '66'),
              SingeStat('Assists', '66'),
            ],
          )
        ],
      ),
    );
  }

  Widget SingeStat(String text, String value) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.DESCRIPTION_STYLE,
        ).marginOnly(bottom: 10),
        Text(
          value,
          style: AppStyles.HEADING_STYLE.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
