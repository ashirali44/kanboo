import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/colors.dart';
class CircularButton extends StatelessWidget {
  Function onPress;
  IconData icon;

  CircularButton({required this.onPress,this.icon = Icons.arrow_forward});
  @override
  Widget build(BuildContext context) {
    final color1 = AppColors.LINEAR_GRADIENT_COLOR_1;
    final color2 = AppColors.LINEAR_GRADIENT_COLOR_2;
    return InkWell(
      onTap: (){
        onPress();
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [color1, color2]),
        ),
        child: Icon(this.icon,color: Colors.white,),
      ),
    );
  }
}


class CircularButtonSVG extends StatelessWidget {
  Function onPress;
  final String icon;

  CircularButtonSVG({required this.onPress,required this.icon});
  @override
  Widget build(BuildContext context) {
    final color1 = AppColors.LINEAR_GRADIENT_COLOR_1;
    final color2 = AppColors.LINEAR_GRADIENT_COLOR_2;
    return InkWell(
      onTap: (){
        onPress();
      },
      child: Container(
        width: 55,
        height: 55,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [color1, color2]),
        ),
        child: SvgPicture.asset('assets/'+this.icon+'.svg'),
      ),
    );
  }
}