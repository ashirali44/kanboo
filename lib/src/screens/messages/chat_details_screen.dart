import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/styles.dart';
import '../../widgets/background.dart';
import 'members_list.dart';
class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key});

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  bool _switchValue= true;

  final List<String> memberImages = [
    'https://i.pinimg.com/736x/68/bd/57/68bd57302173dad89540bb976e85d1d3.jpg',
    'https://images.unsplash.com/photo-1658292905905-71d6d5f2ce97?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ym95cyUyMGRwfGVufDB8fDB8fHww',
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg',
    'https://i.pinimg.com/736x/68/bd/57/68bd57302173dad89540bb976e85d1d3.jpg',
    'https://images.unsplash.com/photo-1658292905905-71d6d5f2ce97?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ym95cyUyMGRwfGVufDB8fDB8fHww',
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg',
    'https://i.pinimg.com/736x/68/bd/57/68bd57302173dad89540bb976e85d1d3.jpg',
    'https://images.unsplash.com/photo-1658292905905-71d6d5f2ce97?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Ym95cyUyMGRwfGVufDB8fDB8fHww',
    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiYcpfphM1QJa4z41UmvGY06b0TfmPakWPuxSgbwJorwh7RO7k3ne6Q4ddwQLlkz_FmRkIyhzB86kNNKJRWe8U3-ePSh-O6nhGIpsXirt00aD9raE2y2Il20UzDmGMGxBye9nLtIx0B3Do5tz-1fiUKagp113jS0j5ao5qEOhDqfnne-fLZ75oOegHk0UQ/s1080/Attitude%20Girls%20DP%20For%20WhatsApp%203.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return InputBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Group Details",
            style: AppStyles.HEADING_STYLE.copyWith(fontSize: 18),
          ),
          centerTitle: true,

        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: EdgeInsets.only(top: 50),
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                CircularImage().marginOnly(bottom: 20),
                NameWidget().marginOnly(bottom: 20),
                DividerWidget(),
                Row(

                  children: [
                    Text('Add Group Description...',style: AppStyles.DESCRIPTION_STYLE.copyWith(
                        color: Colors.white
                    ),textAlign: TextAlign.start,).marginOnly(top: 10,bottom: 10)
                  ],
                ).marginOnly(top: 10),
                MediaViewer().marginOnly(bottom: 5,top: 5),
                DividerWidget(),
                MuteNotifcations().marginOnly(top: 05,bottom: 05),
                DividerWidget(),
                AddTeamMembers().marginOnly(top: 15,bottom: 15),
                MembersList().marginOnly(bottom: 10),
                ExitGroup(),
              ],
            ).marginOnly(left: 20, right: 20),
          ),
        ),

      ),
    );

  }

  Widget CircularImage(){
    return  Stack(
      children: [
        CircleAvatar(
          radius: 60.0,
          backgroundImage: AssetImage("assets/avatars.png"),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget NameWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Game Fantastic ",style: AppStyles.HEADING_STYLE,),
        Icon(Icons.edit,color: Colors.white,size: 20,),
      ],
    );
  }

  Widget DividerWidget() {
    return Divider(
      thickness: .1,
    );
  }

  Widget MediaViewer(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Media, Links, and Docs.',style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(
            color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
        ),textAlign: TextAlign.start,).marginOnly(top: 10,bottom: 10),
        Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff246BFD),size: 20,)
      ],
    );
  }

  Widget MuteNotifcations(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/notify.svg'),
            SizedBox(width: 10,),
            Text('Mute Notifications',style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(
                color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
            ),textAlign: TextAlign.start,).marginOnly(top: 10,bottom: 10),
          ],
        ),
        CupertinoSwitch(
          value: _switchValue,
          activeColor: Color(0xff246BFD),
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
        ),
      ],
    );
  }

  Widget AddTeamMembers(){
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/add.svg",height: 35,),
            SizedBox(width: 15,),
            Text('Add Team Members',style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(
                color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
            ),textAlign: TextAlign.start,).marginOnly(top: 10,bottom: 10),
          ],
        )
      ],
    );
  }

  Widget ExitGroup(){
    return Row(
      children: [
        SvgPicture.asset('assets/exitt.svg',height: 30,),
        SizedBox(width: 15,),
        Text('Exit Group',style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(
            color: Color(0xffF75555),fontSize: 18,fontWeight: FontWeight.w600
        ),textAlign: TextAlign.start,).marginOnly(top: 10,bottom: 10),
      ],
    );
  }

  Widget MembersList(){
    return  Container(
      width: Get.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              child: Stack(
                children: memberImages.asMap().entries.map((entry) {
                  final index = entry.key;
                  final imageUrl = entry.value;
                  final overlap = 30.0;
                  final left = index * overlap;

                  return Positioned(
                    left: left,
                    child: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          GestureDetector(
              onTap: (){
                Get.to(MembersListScreen());
              },
              child: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xff246BFD),size: 20,))

        ],
      ).marginOnly(bottom: 10),
    );
  }
}
