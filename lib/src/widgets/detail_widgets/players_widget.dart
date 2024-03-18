import 'package:flutter/material.dart';
import 'package:kanboo/src/constants/styles.dart';

class Player {
  final String name;
  final String imageUrl;
  final int number;
  final int score;

  Player({
    required this.name,
    required this.imageUrl,
    required this.number,
    required this.score,
  });
}

class PlayerGridView extends StatelessWidget {
  final List<Player> players;

  PlayerGridView({required this.players});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: players.length,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.only(bottom: 150),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 12.0,
        crossAxisSpacing: 12.0,
        mainAxisExtent: 130

      ),
      itemBuilder: (context, index) {
        return _buildPlayerCard(players[index]);
      },
    );
  }

  Widget _buildPlayerCard(Player player) {
    return Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color: Colors.white.withOpacity(.08),),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10,),
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage("https://s3-alpha-sig.figma.com/img/0fa8/ebc2/c7c09e220ecfc1f485a5cef0e25e3c84?Expires=1711324800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=p1--cxZfPwohtja1H2INQQvr7spmwlAFfwQwfbOHH1ctlHeJLsaZfMQ3xa9V0g~EAtd70sJO0HX0xwtWpE8ZyzcvHScqPsLHdLLtKRkRN6pgG7SRtIgzvpOaaygOiow2ko6KK4UbCSxS2WFh4WEfNr0W~kcB5gyUrqPYj-MMvTR7zJq4CKZouo3JUT211To4-W4nVZdYSM-eCtKeSZvUPUc9eRCryYQ8gF4jJVUzshlk8o61YUtpuCEGlCbFZdZY4IrM6l87ZSmziiF~CXRvfc5~46GPu2xjhUwi97GLk8V5qZLCnIWeDWjffmzR3r9q4NYmVEe-Nd0VQV7gwtRs7Q__"),
              ),
              Positioned(
                bottom: -15,
                right: 17,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    shape: BoxShape.circle
                  ),
                  padding: EdgeInsets.all(7),
                  child: Text(
                    '${player.number}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.0),
          Text(player.name,style: AppStyles.DETAIL_TEXT_STYLE_WHITE.copyWith(fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

