import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanboo/src/constants/colors.dart';

class AppStyles {
  static TextStyle HEADING_STYLE =
  GoogleFonts.urbanist(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22);
  static TextStyle DESCRIPTION_STYLE =
  GoogleFonts.urbanist(color: AppColors.DULL_WHITE,fontSize: 15);
  static TextStyle BUTTON_TEXT_FONT =
  GoogleFonts.urbanist(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w200);
  static TextStyle GAME_DETAILS_VIEW =
  GoogleFonts.urbanist(color: AppColors.WHITE_COLOR,fontSize: 20,
  fontWeight: FontWeight.w500);

}
