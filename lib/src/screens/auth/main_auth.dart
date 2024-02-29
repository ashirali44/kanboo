import 'package:flutter/material.dart';
import 'package:kanboo/src/constants/colors.dart';
import 'package:kanboo/src/widgets/background.dart';

import '../../constants/styles.dart';
class MainAuthScreen extends StatefulWidget {
  const MainAuthScreen({super.key});

  @override
  State<MainAuthScreen> createState() => _MainAuthScreenState();
}

class _MainAuthScreenState extends State<MainAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return InputBackground(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Center(child: Text('Create an Account',style: AppStyles.HEADING_STYLE,)),
            SizedBox(height: 10,),
            Center(child: Text(
              'Create an account to save your team, club & league preferences.',
              textAlign: TextAlign.center,
              style: AppStyles.DESCRIPTION_STYLE,))

          ],
        ),
      ),
    ));
  }
}
