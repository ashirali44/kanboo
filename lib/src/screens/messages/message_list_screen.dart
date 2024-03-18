import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/styles.dart';

import '../../models/messages.dart';
import '../../widgets/background.dart';
import '../../widgets/fields/auth_field.dart';
import '../../widgets/listitems/message_list_item.dart';
class MessageScreenList extends StatefulWidget {
  const MessageScreenList({super.key});

  @override
  State<MessageScreenList> createState() => _MessageScreenListState();
}

class _MessageScreenListState extends State<MessageScreenList> {
  @override
  Widget build(BuildContext context) {
    return  InputBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Messages',style: AppStyles.HEADING_STYLE,).marginOnly(bottom: 10),
          InputFieldFlutterFilled(
            borderRadius: 10,
            labelText: 'Email',
            hideLabel: true,
            strokewidth: .2,
            height: 55,
            showprefix: true,
            hintText: 'Search here',
            controller: TextEditingController(),
          ).marginOnly(bottom: 0010),
          Expanded(child: ListView.builder(
              itemCount: chatMessages.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return MessageListItem(
                  time: chatMessages[index].lastMessageTime,
                  title: chatMessages[index].gameName,
                  lastmessage: chatMessages[index].lastMessage,
                  readcount: chatMessages[index].unreadCount,
                );
              }),)
        ],
      ).marginOnly(left: 20,right: 20,top: 40),
    );
  }
}
