import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/failed/failed.dart';
import 'package:demo_flutter/screens/history/history.dart';
import 'package:demo_flutter/screens/language/language.dart';
import 'package:demo_flutter/screens/notifications/notifications.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../more_setting/more_setting.dart';
import 'components/appbar.dart';

import 'homeScreen.dart';

class Home extends StatefulWidget {
  static const routeName='/home';
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cIndex=0;
  int val = 0;
  List screens = [HomeScreen(),History(),Notifications(),MoreSettings()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colorScheme.onBackground,
        body: screens[cIndex],

        bottomNavigationBar: FABBottomAppBar(
          centerItemText: '',
          color: Colors.grey,
          backgroundColor: Color(0xFF281125),
          selectedColor: Colors.white,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: ((index) {
            setState(() {
              cIndex=index;
            });
          }),
          items: [
            FABBottomAppBarItem(iconData: Icons.home_filled, text: S.of(context).home),
            FABBottomAppBarItem(iconData: Icons.history, text: S.of(context).history),
            FABBottomAppBarItem(
                iconData: Icons.notifications, text: S.of(context).notification),
            FABBottomAppBarItem(iconData: Icons.more_horiz, text: S.of(context).more),
          ],
        ),
        // body: _list[_page],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(
            Icons.settings_overscan,
            color: Color(0xFF281125),
            size: 35,
          ),
          elevation: 0,
        ),
      ),
    );
  }
}


