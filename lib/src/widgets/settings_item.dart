import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kanboo/src/constants/styles.dart';

class SettingListTileItem extends StatelessWidget {
  final String prefixIcon;
  final String text;

  const SettingListTileItem(
      {super.key, required this.text, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border(
         bottom: BorderSide(color: Colors.white.withOpacity(.06),width: .7,)
        )
      ),
      padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  child: SvgPicture.asset(
                    'assets/' + this.prefixIcon + '.svg',
                    height: 23,
                  ),
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(.05),
                      shape: BoxShape.circle),
                ),
                SizedBox(width: 10,),
                Text(this.text,style: AppStyles.TILES_STYLE,),
              ],
            ),
          ),
          SvgPicture.asset('assets/arrows.svg',height: 20,),
        ],
      ),
    ).marginOnly(bottom: 10);
  }
}
