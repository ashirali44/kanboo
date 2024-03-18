import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kanboo/src/screens/dashboard/explore.dart';
import 'package:kanboo/src/screens/dashboard/games_view.dart';
import 'package:kanboo/src/screens/messages/message_list_screen.dart';

import '../profile/profile_screen.dart';


class MainDashboardPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainDashboardPage>
    with
        AutomaticKeepAliveClientMixin<MainDashboardPage>,
        SingleTickerProviderStateMixin {
  int currentIndex = 0;
  TabController? _tabController;
  List<Widget> widgetsList = [GamesView(),ExploreSectionScreen(),MessageScreenList(),ProfileScreen()];

  @override
  bool get wantKeepAlive => true;

  void changePage(int index) {
   if(index!=currentIndex){
     setState(() {
       currentIndex = index;
     });
     _tabController!.animateTo(index);
   }
  }


  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 4);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsList[currentIndex],
      bottomNavigationBar:   Container(
        height: 70,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.red,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff170B47),
              Color(0xff070518),
            ],
          ),
        ),
        child: BottomNavigationBar(
          onTap: changePage,
          showUnselectedLabels: true,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          selectedLabelStyle: GoogleFonts.urbanist(color: Colors.white),
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                label: 'Home',
                
                icon: SvgPicture.asset(currentIndex == 0
                    ? "assets/game_white.svg"
                    : "assets/game_grey.svg",color: currentIndex == 0? Colors.white : Colors.white.withOpacity(.6),)),
            BottomNavigationBarItem(
                label: 'Search',
                icon: SvgPicture.asset(currentIndex == 1
                    ? "assets/search_white.svg"
                    : "assets/search_grey.svg").marginOnly(bottom: 04)),
            BottomNavigationBarItem(
                label: 'Chats',
                icon: SvgPicture.asset(currentIndex == 2
                    ? "assets/messages_white.svg"
                    : "assets/chat_grey.svg").marginOnly(bottom: 04)),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: SvgPicture.asset(currentIndex == 3
                    ? "assets/user_white.svg"
                    : "assets/user_grey.svg",fit: BoxFit.cover,height: 28,).marginOnly(top: 3)),
            // Add more items as needed
          ],
        ),
      ),
    );
  }
}
