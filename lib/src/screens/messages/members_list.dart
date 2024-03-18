import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants/styles.dart';
import '../../widgets/background.dart';
class MembersListScreen extends StatefulWidget {
  const MembersListScreen({super.key});

  @override
  State<MembersListScreen> createState() => _MembersListState();
}

class _MembersListState extends State<MembersListScreen> {
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
            "Players",
            style: AppStyles.HEADING_STYLE.copyWith(fontSize: 18),
          ),
          centerTitle: true,

        ),
        body: Container(
          margin: EdgeInsets.only(top: 10),
          child: ListView.builder(
              itemCount: memberImages.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(memberImages[index]),
                    ),
                    SizedBox(width: 20,),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Player Name.',style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(
                            color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600
                        ),textAlign: TextAlign.start,).marginOnly(top: 0,bottom: 05),
                        Text('john@gmail.com',style: AppStyles.DESCRIPTION_STYLE.copyWith(
                            color: Colors.white
                        ),textAlign: TextAlign.start,)
                      ],
                    ))
                  ],
                ).marginOnly(bottom: 20);
              }).marginOnly(left: 20, right: 20,bottom: 20),
        ),

      ),
    );

  }

}
