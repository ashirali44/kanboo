import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/colors.dart';

import '../../constants/gradients.dart';
import '../../constants/routes.dart';
import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/buttons/round_button.dart';
import '../../widgets/fields/auth_field.dart';

class SignInEmail extends StatefulWidget {
  const SignInEmail({super.key});

  @override
  State<SignInEmail> createState() => _SignInEmailState();
}

class _SignInEmailState extends State<SignInEmail> {
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
          'Welcome Back!',
          style: AppStyles.HEADING_STYLE,
        )).marginOnly(bottom: 30),


        InputFieldFlutter(
          labelText: 'Email',
          hintText: 'example@mail.com',
          controller: TextEditingController(),
        ).marginOnly(bottom: 20),

        InputFieldFlutter(
          labelText: 'Password',
          hintText: 'Type password',
          controller: TextEditingController(),
        ),
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
          text: 'Sign in',
        ).marginOnly(bottom: 15),
        SizedBox(height: 20,),
        InkWell(
          onTap: (){
            Get.toNamed(AppRoutes.forgotPasssword);
          },
          child: Text(
            'Forgot password?',
            textAlign: TextAlign.center,
            style: AppStyles.DESCRIPTION_STYLE
                .copyWith(fontWeight: FontWeight.w400, color: AppColors.FORGOT_PASSWORD),
          )
        ),
        SizedBox(height: 20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account yet? ",
              textAlign: TextAlign.center,
              style: AppStyles.DESCRIPTION_STYLE,
            ),
            InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.signUpEmail);
                },
                child:Text(
                  'Signup',
                  textAlign: TextAlign.center,
                  style: AppStyles.DESCRIPTION_STYLE
                      .copyWith(fontWeight: FontWeight.w700, color: Colors.white),
                )
            ),
          ],
        ).marginOnly(bottom: 20),

      ],
    ).marginOnly(bottom: 10);
  }
}
