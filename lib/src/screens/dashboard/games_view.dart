import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kanboo/src/constants/routes.dart';
import 'package:kanboo/src/constants/styles.dart';
import 'package:kanboo/src/screens/game/create_game.dart';
import 'package:kanboo/src/screens/notifications_screen.dart';

import '../../widgets/background.dart';
import '../../widgets/buttons/circularbutton.dart';
import '../../widgets/listitems/gridview_list_items.dart';
class GamesView extends StatefulWidget {
  const GamesView({super.key});

  @override
  State<GamesView> createState() => _GamesViewState();
}

class _GamesViewState extends State<GamesView> {
  final EasyInfiniteDateTimelineController _controller =
  EasyInfiniteDateTimelineController();

  DateTime focusDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return InputBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
          floatingActionButton:  CircularButton(
                 onPress:  (){
                   Get.toNamed(AppRoutes.createGame);
                 },
            icon: Icons.add,

          ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            HeaderHome(),
            HorizentalCalendar().marginOnly(bottom: 20),
            Text("Today, Tue 6 February, 2024",style: AppStyles.HEADING_STYLE,).marginOnly(left: 25,right: 20),
            Expanded(child: GridViewBox()),
          ],
        )
      ),
    );
  }


  Widget HorizentalCalendar(){
    return EasyInfiniteDateTimeLine(
      showTimelineHeader: false,
      dayProps: EasyDayProps(
        dayStructure: DayStructure.dayStrDayNum,
        height: 95,
        todayStyle: DayStyle(
          dayStrStyle: TextStyle(color: Colors.white),
          dayNumStyle: TextStyle(color: Colors.white),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffFFE600),
                Color(0xff48A7FF),
              ],
            ),
            color: Colors.white.withOpacity(.06),
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border:  Border.all(
              color: Color(0xffFFE600).withOpacity(.2),
              width: .5,
            ),
          ),
        ),
        inactiveDayStyle: DayStyle(
          dayStrStyle: TextStyle(color: Colors.white),
          dayNumStyle: TextStyle(color: Colors.white),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffFFE600),
                Color(0xff48A7FF),
              ],
            ),
            color: Colors.white.withOpacity(.06),
            borderRadius: BorderRadius.all(Radius.circular(50)),
            border:  Border.all(
              color: Color(0xffFFE600).withOpacity(.2),
              width: .5,
            ),
          ),

        ),
        activeDayStyle: DayStyle(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff652692),
                Color(0xff13386D),
              ],
            ),
          ),
        ),
      ),

      controller: _controller,
      firstDate: DateTime(2024,2,28),
      focusDate: focusDate,
      lastDate: DateTime(2024, 12, 31),
      onDateChange: (selectedDate) {
        setState(() {
          focusDate = selectedDate;
        });
      },
    ).marginOnly(left: 15,top: 20);
  }

  Widget HeaderHome(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Home",style: AppStyles.HEADING_STYLE,),
        GestureDetector(
            onTap: (){
              Get.toNamed(AppRoutes.notificationScreen);
            },
            child: SvgPicture.asset('assets/bell.svg',height: 35,))
      ],
    ).marginOnly(left: 25,right: 20);
  }

  final List<Map> myProducts =
  List.generate(323, (index) => {"id": index, "name": "Product $index"})
      .toList();

  Widget GridViewBox(){
    return GridView.builder(
       physics: BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: .9,
            crossAxisSpacing: 13,
            mainAxisSpacing: 13),
        itemCount: 10,
        itemBuilder: (BuildContext ctx, index) {
          return GameViewListItem();
        }).marginOnly(left: 20,right: 20);
  }
}
