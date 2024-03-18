import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kanboo/src/constants/styles.dart';

import '../../constants/colors.dart';
import '../../constants/gradients.dart';

class RoundButtonGradient extends StatelessWidget {
   RoundButtonGradient({
    Key? key,
    this.logoOnly = false,
    this.width = double.infinity,
    this.height = 62,
    this.withInBetween = 30,
    required this.text,
    required this.gradient,
    this.showBg = false,
    this.radius = 16,
    this.gradientStroke = 0.5,
    required this.onPress,
    required this.svgLogo,
     this.bgGradient = AppGradients.RoundButtonBG,
  }) : super(key: key);

  final double width;
  final bool showBg;
  final double withInBetween;
  final double height;
  final LinearGradient gradient;
  LinearGradient bgGradient;
  final double radius;
  final double gradientStroke;
  final VoidCallback onPress;
  final String text;
  final String svgLogo;
  final bool logoOnly;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: this.showBg ?  this.bgGradient: null,
          border: GradientBoxBorder(
            gradient: gradient,
            width: gradientStroke,
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !this.logoOnly ? SvgPicture.asset("assets/"+svgLogo+".svg",height: 22,) : SizedBox.shrink(),
            !this.logoOnly ?  SizedBox(width: this.withInBetween,): SizedBox.shrink(),
            Text(
              text,
              style: AppStyles.BUTTON_TEXT_FONT,
            ),
          ],
        ),
      ),
    );
  }
}
