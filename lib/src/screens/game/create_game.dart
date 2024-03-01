import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/colors.dart';

import '../../constants/gradients.dart';
import '../../constants/routes.dart';
import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/buttons/round_button.dart';
import '../../widgets/fields/auth_field.dart';

class CreateGameScreen extends StatefulWidget {
  const CreateGameScreen({super.key});

  @override
  State<CreateGameScreen> createState() => _CreateGameScreenState();
}

class _CreateGameScreenState extends State<CreateGameScreen> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title:  Text(
              'Create Game',
              style: AppStyles.HEADING_STYLE,
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),

          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20,top: 20),
              child: Column(
                children: [TopArea()],
              ),
            ),
          ),
        ));
  }

  Widget TopArea() {
    return Column(
      children: [

        InputFieldFlutter(
          labelText: 'Game Name',
          hintText: 'Type here',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),

        InputFieldFlutter(
          labelText: 'Description',
          hintText: 'Enter description here',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),

        InputFieldFlutter(
          labelText: 'Date',
          hintText: 'Select Date',
          showsuffix: true,
          suffixpath: 'assets/calendar.svg',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),

        InputFieldFlutter(
          labelText: 'Time',
          showsuffix: true,
          suffixpath: 'assets/clock.svg',
          hintText: 'Select Time',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),

        InputFieldFlutter(
          labelText: 'Players Allowed',
          hintText: 'Enter here',
          controller: TextEditingController(),

        ).marginOnly(bottom: 50),



        RoundButtonGradient(
          svgLogo: 'email',
          withInBetween: 40,
          showBg: true,
          gradient: AppGradients.gradient,
          onPress: () {},
          gradientStroke: .3,
          logoOnly: true,
          text: 'Create Game',
        ).marginOnly(bottom: 25),




      ],
    );
  }



}
