import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/styles.dart';
class GameDescriptionWidgetDetails extends StatelessWidget {
  const GameDescriptionWidgetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tortor arcu, gravida ac.",
          style: AppStyles.DESCRIPTION_STYLE,).marginOnly(bottom: 10,top: 10),
        Text("Read more",
          style: AppStyles.DETAIL_TEXT_STYLE_WHITE,)
      ],
    );
  }
}
