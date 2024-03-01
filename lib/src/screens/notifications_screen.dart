import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/colors.dart';
import 'package:kanboo/src/widgets/background.dart';

import '../constants/styles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title:  Text(
              'Notifications',
              style: AppStyles.HEADING_STYLE,
            ),
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),

          backgroundColor: Colors.transparent,
          body: Container(
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/bellbig.svg'),
                SizedBox(height: 20,),
                Text('Opps, no notification yet!',style: AppStyles.DESCRIPTION_STYLE,),
              ],
            ),
          )
        ),

    );
  }

}
