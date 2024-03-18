import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/styles.dart';
class DateWidgetGameDetails extends StatelessWidget {
  const DateWidgetGameDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Container(
           padding: EdgeInsets.all(13),
           decoration: BoxDecoration(
             shape: BoxShape.circle,
             color: Colors.white.withOpacity(.06)
           ),
           child: SvgPicture.asset('assets/calendar_details.svg',height: 23,),
         ).marginOnly(right: 20),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("Sunday, 5 February, 2024",
            style: AppStyles.DETAIL_TEXT_STYLE_WHITE,),
            Text("18:00 - 19:00",
              style: AppStyles.DESCRIPTION_STYLE,).marginOnly(top: 05),

          ],))
      ],
    );
  }
}
