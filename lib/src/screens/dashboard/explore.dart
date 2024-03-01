import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/fields/auth_field.dart';
class ExploreSectionScreen extends StatefulWidget {
  const ExploreSectionScreen({super.key});

  @override
  State<ExploreSectionScreen> createState() => _ExploreSectionScreenState();
}

class _ExploreSectionScreenState extends State<ExploreSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Text("Explore",style: AppStyles.HEADING_STYLE,),
                SizedBox(height: 10,),
                InputFieldFlutter(
                  borderRadius: 50,
                  labelText: 'Email',
                  hideLabel: true,
                  strokewidth: .2,
                  height: 50,
                  showprefix: true,
                  hintText: 'Search here',
                  controller: TextEditingController(),
                ).marginOnly(bottom: 20),
              ],
            ),
          )
      ),
    );
  }

}
