import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kanboo/src/constants/colors.dart';
import 'package:kanboo/src/constants/gradients.dart';
import 'package:kanboo/src/constants/routes.dart';
import 'package:kanboo/src/widgets/background.dart';

import '../../constants/styles.dart';
import '../../widgets/buttons/round_button.dart';
class MainAuthScreen extends StatefulWidget {
  const MainAuthScreen({super.key});

  @override
  State<MainAuthScreen> createState() => _MainAuthScreenState();
}

class _MainAuthScreenState extends State<MainAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(child: Scaffold(
      appBar: AppBar(
        leading: SizedBox.shrink(),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopArea(),
            MiddleArea(),
            BottomArea()

          ],
        ),
      ),
    ));
  }

  Widget TopArea(){
    return Column(
      children: [
        Center(child: Text('Create an Account',style: AppStyles.HEADING_STYLE,)),
        SizedBox(height: 10,),
        Center(child: Text(
          'Create an account to save your team, club & league preferences.',
          textAlign: TextAlign.center,
          style: AppStyles.DESCRIPTION_STYLE,)).marginOnly(bottom: 30),

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

  Widget MiddleArea(){
    return Row(
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
    );
  }

  Widget BottomArea(){
    return Column(
      children: [
        RoundButtonGradient(
          svgLogo: 'email',
          withInBetween: 40,
          showBg: true,
          gradient: AppGradients.gradient,
          onPress: () {  },
          gradientStroke: .3,
          text: 'Sign up with Email',
        ).marginOnly(bottom: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'Already a subscriber? ',
            textAlign: TextAlign.center,
            style: AppStyles.DESCRIPTION_STYLE,),
            InkWell(
              onTap: (){
                Get.toNamed(AppRoutes.siginInEmail);
              },
              child: Text(
              'Log In',
              textAlign: TextAlign.center,
              style: AppStyles.DESCRIPTION_STYLE.copyWith(fontWeight: FontWeight.w700,color: Colors.white),),
            )],
        ).marginOnly(bottom: 20),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'By using the app, I agree to The Sports ',
            style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white.withOpacity(.3)),
            children:  <TextSpan>[
              TextSpan(text: 'Terms of Service', style: AppStyles.DESCRIPTION_STYLE.copyWith(fontWeight: FontWeight.w200,color: Colors.white.withOpacity(.8),decoration: TextDecoration.underline),),
              TextSpan(text: ' and ',  style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white.withOpacity(.3)),),
              TextSpan(text: 'Privacy Policy', style: AppStyles.DESCRIPTION_STYLE.copyWith(fontWeight: FontWeight.w200,color: Colors.white.withOpacity(.8) ,decoration: TextDecoration.underline),),

            ],
          ),
        )
      ],
    ).marginOnly(bottom: 50);
  }
}
