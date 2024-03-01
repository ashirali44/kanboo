import 'package:flutter/material.dart';

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