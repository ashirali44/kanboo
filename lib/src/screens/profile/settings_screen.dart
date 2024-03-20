import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/styles.dart';
import '../../widgets/background.dart';
import '../../widgets/settings_item.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InputBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Settings",
            style: AppStyles.HEADING_STYLE.copyWith(fontSize: 18),
          ),
          centerTitle: true,

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingListTileItem(text: 'Account Info',prefixIcon: 'account',),
            SettingListTileItem(text: 'Help/FAQ',prefixIcon: 'help',),
            SettingListTileItem(text: 'Privacy Policy',prefixIcon: 'privacy',),
            SettingListTileItem(
              text: 'Log Out',
              prefixIcon: 'logout',
            ).marginOnly(bottom: 10),

          ],
        ).marginOnly(left: 20, right: 20),

      ),
    );

  }
}
