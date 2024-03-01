

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/colors.dart';

import '../../constants/gradients.dart';
import '../../constants/routes.dart';
import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/buttons/round_button.dart';
import '../../widgets/fields/auth_field.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: SizedBox.shrink(),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [TopArea(), BottomArea()],
            ),
          ),
        ));
  }

  Widget TopArea() {
    return Column(
      children: [
        Center(
            child: Text(
              'Please enter your Registered email ID',
              textAlign: TextAlign.center,
              style: AppStyles.HEADING_STYLE,
            )).marginOnly(bottom: 10,left: 15,right: 15),

        Center(child: Text(
          'We will send a verification code to your registered email ID',
          textAlign: TextAlign.center,
          style: AppStyles.DESCRIPTION_STYLE,)).marginOnly(bottom: 30,left: 15,right: 15),
        InputFieldFlutter(
          labelText: 'Email',
          hintText: 'example@mail.com',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),


      ],
    );
  }


  Widget BottomArea() {
    return Column(
      children: [
        RoundButtonGradient(
          svgLogo: 'email',
          withInBetween: 40,
          showBg: true,
          gradient: AppGradients.gradient,
          onPress: () {},
          gradientStroke: .3,
          logoOnly: true,
          text: 'Send instruction',
        ).marginOnly(bottom: 15),
        SizedBox(height: 20,),

        SizedBox(height: 20,),



      ],
    ).marginOnly(bottom: 10);
  }
}
