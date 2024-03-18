import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/gradients.dart';
import '../../constants/styles.dart';
import '../buttons/round_button.dart';
class WaitingListWidget extends StatelessWidget {
  const WaitingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10,top: 05,bottom: 05),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white.withOpacity(.08),width: 1),
        color: Colors.white.withOpacity(.1),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(children: [
       Expanded(child:  Text("Notify me if a spot available?",
         style: AppStyles.DESCRIPTION_STYLE,).marginOnly(bottom: 10,top: 10),),
       SizedBox(height: 10,),
       Expanded(child:  RoundButtonGradient(
         svgLogo: 'email',
         height: 55,
         withInBetween: 40,
         showBg: true,
         gradient: AppGradients.gradient,
         onPress: () {},
         gradientStroke: .3,
         logoOnly: true,
         text: 'Join Waitlist',
       ).marginOnly(left: 05))
      ],),
    );
  }
}
