import 'package:flutter/material.dart';
import 'package:get/get.dart';
class InputBackground extends StatelessWidget {
  final Widget child;
  const InputBackground({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          child:  Image.asset('assets/bg.png',fit: BoxFit.fill,),
        ),
        this.child
      ],
    );
  }
}
