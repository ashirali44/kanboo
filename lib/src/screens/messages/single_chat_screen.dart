import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/buttons/circularbutton.dart';
import '../../widgets/fields/auth_field.dart';

class ChatMessage {
  final String message;
  final bool isSender;

  ChatMessage({
    required this.message,
    required this.isSender,
  });
}

class SingleChatMessageScreen extends StatefulWidget {
  const SingleChatMessageScreen({Key? key}) : super(key: key);

  @override
  _SingleChatMessageScreenState createState() =>
      _SingleChatMessageScreenState();
}

class _SingleChatMessageScreenState extends State<SingleChatMessageScreen> {
  final List<ChatMessage> chatMessages = [
    ChatMessage(
        message: 'Wow, I have checked your work. I like it very much! 😍',
        isSender: true),
    ChatMessage(
        message:
            'Hi Team, I just made the latest wireframe update, please check 😁',
        isSender: false),
    ChatMessage(message: 'How are you?', isSender: true),
    ChatMessage(message: 'I\'m good, thanks!', isSender: false),
    ChatMessage(message: 'What about you?', isSender: true),
    ChatMessage(message: 'I\'m fine too.', isSender: false),
    ChatMessage(message: 'That\'s great!', isSender: true),
  ];

  final TextEditingController _messageController = TextEditingController();

  Widget build(BuildContext context) {
    return InputBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Game Fantastic",
            style: AppStyles.HEADING_STYLE.copyWith(fontSize: 18),
          ),
          centerTitle: true,
          actions: [
            SvgPicture.asset(
              'assets/dots.svg',
              height: 30,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatMessages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  final message = chatMessages[index];
                  return Container(
                    padding: EdgeInsets.only(
                        left: message.isSender ? 80 : 0,
                        right: !message.isSender ? 70 : 0),
                    child: Align(
                      alignment: message.isSender
                          ? Alignment.bottomRight
                          : Alignment.bottomLeft,
                      child: Container(
                          decoration: BoxDecoration(
                            color: message.isSender ? Colors.blue : Color(0xff35383F),
                            gradient: message.isSender ? LinearGradient(colors: [ Color(0xff9A1CFF),Color(0xff5C38FF),]) : null,
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(message.isSender ? 12 : 0),
                              topRight: Radius.circular(12),
                              bottomRight:
                                  Radius.circular(message.isSender ? 0 : 12),
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 13, bottom: 13),
                          margin: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  message.message,
                                  style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(color: Colors.white,
                                  fontSize: 16),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '9:41',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ).marginOnly(bottom: 20);
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: InputFieldFlutterFilled(
                  borderRadius: 10,
                  labelText: 'Email',
                  hideLabel: true,
                  strokewidth: .2,
                  height: 55,
                  hintText: 'Type message....',
                  controller: TextEditingController(),
                )),
                SizedBox(width: 8.0),
                CircularButtonSVG(
                  onPress: () {
                    if (_messageController.text.isNotEmpty) {
                      setState(() {
                        chatMessages.insert(
                          0,
                          ChatMessage(
                              message: _messageController.text, isSender: true),
                        );
                        _messageController.clear();
                      });
                    }
                  },
                  icon: 'send',
                ),
              ],
            ).marginOnly(bottom: 0020, top: 10),
          ],
        ).marginOnly(left: 20, right: 20),
      ),
    );
  }
}
