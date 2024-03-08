import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/styles.dart';
import 'package:kanboo/src/screens/game/game_details_1.dart';
class GameViewListItem extends StatelessWidget {
  const GameViewListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Get.to(GameDetailsViewScreen());
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("assets/patterns.png",),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff7A0D28).withOpacity(.15),
              Color(0xff162E69).withOpacity(.60),
            ],
          ),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.06),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.circle,color: Colors.red,size: 10,),
                      Text(" Online",style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white),)
                    ],
                  ),
                ),
                Expanded(child: Text(" 60 mins",style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white,fontWeight: FontWeight.w600),overflow: TextOverflow.ellipsis,))

              ],
            ),
            SizedBox(height: 15,),
            Text("Montjuic F7",style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white),),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 5),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.06),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text("No Spots",style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white.withOpacity(.6)),)

            ).marginOnly(bottom: 15),
            Text("Starts at 11:00 PM",style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white,fontSize: 13),)

          ],
        ),
      ),
    );
  }
}
