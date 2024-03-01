import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/colors.dart';

import '../../constants/gradients.dart';
import '../../constants/routes.dart';
import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/buttons/round_button.dart';
import '../../widgets/fields/auth_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title:  Text(
              'Create an account!',
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
                children: [TopArea(), BottomArea()],
              ),
            ),
          ),
        ));
  }

  Widget TopArea() {
    return Column(
      children: [

        InputFieldFlutter(
          labelText: 'Name',
          hintText: 'John Deo',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),

        InputFieldFlutter(
          labelText: 'Email',
          hintText: 'example@mail.com',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),

        InputFieldFlutter(
          labelText: 'Password',
          hintText: 'Type password',
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
          text: 'Sign in',
        ).marginOnly(bottom: 25),



        Row(
          children: [
            Expanded(
              child: Divider(
                color: Colors.white.withOpacity(.08),
                height: .5,
              ),
            ),
            Text(
              '  or  ',
              textAlign: TextAlign.center,
              style: AppStyles.DESCRIPTION_STYLE.copyWith(fontWeight: FontWeight.w700,color: Colors.white),),
            Expanded(
              child: Divider(
                color: Colors.white.withOpacity(.08),
                height: .5,
              ),
            ),
          ],
        ).marginOnly(bottom: 25),
        RoundButtonGradient(
          gradient: AppGradients.gradient,
          svgLogo: 'google',
          onPress: () {  },
          gradientStroke: .3,
          text: 'Continue with Google',
        ).marginOnly(bottom: 20),
        RoundButtonGradient(
          svgLogo: 'apple',
          gradient: AppGradients.gradient,
          onPress: () {  },
          gradientStroke: .3,
          text: 'Continue with Apple ',
        ).marginOnly(bottom: 20),

      ],
    );
  }


  Widget BottomArea() {
    return Column(
      children: [



        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              textAlign: TextAlign.center,
              style: AppStyles.DESCRIPTION_STYLE,
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child:Text(
                'Log In',
                textAlign: TextAlign.center,
                style: AppStyles.DESCRIPTION_STYLE
                    .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
              )
            ),

          ],
        ).marginOnly(bottom: 40,top: 10),

      ],
    ).marginOnly(bottom: 10);
  }
}
