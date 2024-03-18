

import 'package:flutter/cupertino.dart';

import 'colors.dart';

class AppGradients {

   static LinearGradient gradient = LinearGradient(colors: [AppColors.RBUTTON_LINEAR_GRADIENT_COLOR_1, AppColors.RBUTTON_LINEAR_GRADIENT_COLOR_2]);
   static const LinearGradient RoundButtonBG = LinearGradient(colors: [AppColors.LINEAR_GRADIENT_COLOR_1, AppColors.LINEAR_GRADIENT_COLOR_2]);
   static LinearGradient NoGradient = LinearGradient(colors: [Color(0xff131B26), Color(0xff131B26)]);
   static LinearGradient JoinGameBorder = LinearGradient(colors: [Color(0xff5CFFEB), Color(0xff9A5CA9),
      Color(0xff2CFFD9)]);

}