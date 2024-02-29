
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/colors.dart';
import 'package:kanboo/src/constants/onboard.dart';
import 'package:kanboo/src/constants/routes.dart';
import 'package:kanboo/src/widgets/background.dart';

import '../../widgets/buttons/circularbutton.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

  PageController controller = PageController();
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    return InputBackground(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ONBOARD_LIST_DATA[_curr].image!),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter)),
            height: Get.height,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(top: 60, left: 25, right: 25),
                height: Get.height / 1.9,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                        image: AssetImage('assets/intro.png'),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Container(
                      height:180,
                      child: PageView(
                        allowImplicitScrolling: true,

                        children: [
                          ColumnViewer(ONBOARD_LIST_DATA[_curr].heading!,ONBOARD_LIST_DATA[_curr].description!,ONBOARD_LIST_DATA[_curr].index!),
                          ColumnViewer(ONBOARD_LIST_DATA[_curr].heading!,ONBOARD_LIST_DATA[_curr].description!,ONBOARD_LIST_DATA[_curr].index!),
                          ColumnViewer(ONBOARD_LIST_DATA[_curr].heading!,ONBOARD_LIST_DATA[_curr].description!,ONBOARD_LIST_DATA[_curr].index!),

                        ],
                        scrollDirection: Axis.horizontal,
                        controller: controller,
                        onPageChanged: (num) {
                          setState(() {
                            _curr = num;
                          });
                        },
                      ),
                    ),
                    DotsIndicator(
                      dotsCount: 3,
                      position: _curr,
                      decorator: DotsDecorator(
                        size:  Size.square(6.0),
                        activeSize: Size.square(6.6),
                        spacing: EdgeInsets.only(left: 5),
                        color: Colors.white.withOpacity(.3), // Inactive color
                        activeColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Skip',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.DULL_WHITE, fontSize: 14),
          ),
          CircularButton(
              (){
                print(_curr);
                if(_curr < 2){
                  controller.animateToPage(_curr+1,
                      duration: Duration(milliseconds: 1000), curve: Curves.ease);                  setState(() {
                    _curr = _curr + 1;
                  });
                }else{
                  Get.toNamed(AppRoutes.mainauth);
                }
              }
          ),
        ],
      ).marginOnly(left: 20,right: 20,bottom: 20),
    ));
  }


  Widget ColumnViewer(String text, String description, int index){
    return Column(
      children: [
        Text(
          'All the stories at the heart of the game.',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Get an overview of how you are performing & motivate yourself achieve even moew.',
          textAlign: TextAlign.center,
          style: TextStyle(color: AppColors.DULL_WHITE, fontSize: 15),
        ),

      ],
    );
  }
}



