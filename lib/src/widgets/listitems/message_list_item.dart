import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/styles.dart';
import 'package:kanboo/src/screens/messages/single_chat_screen.dart';
class MessageListItem extends StatelessWidget {
  final String title;
  final String lastmessage;
  final String time;
  final int readcount;
  const MessageListItem({super.key,required this.lastmessage,required this.readcount, required this.time, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(SingleChatMessageScreen());
      },
      child: Row(

        children: [
          Container(
            child: Image.asset("assets/kanboo_white.png",height: 65,),
          ),
          SizedBox(width: 15,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text(this.title,style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(fontWeight: FontWeight.w600,fontSize: 17),).marginOnly(bottom: 5),
            Text(this.lastmessage,style: AppStyles.DESCRIPTION_STYLE)

          ],)),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(this.time,style: AppStyles.DETAIL_TEXT_STYLE_WHITE,).marginOnly(top: 15),
            ],
          )
        ],
      ).marginOnly(bottom: 20),
    );
  }
}
