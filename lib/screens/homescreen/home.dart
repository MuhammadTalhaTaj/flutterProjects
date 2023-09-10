import 'package:demo_flutter/bottomBarIcons/my_flutter_app_icons.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/failed/failed.dart';
import 'package:demo_flutter/screens/history/history.dart';
import 'package:demo_flutter/screens/language/language.dart';
import 'package:demo_flutter/screens/notifications/notifications.dart';
import 'package:demo_flutter/screens/qrView/qrView.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../more_setting/more_setting.dart';
import 'components/appbar.dart';

import 'homeScreen.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cIndex = 0;
  int val = 0;
  List screens = [HomeScreen(), History(), Notifications(), MoreSettings()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colorScheme.onBackground,
        body: screens[cIndex],

        bottomNavigationBar: FABBottomAppBar(
          centerItemText: '',
          color: Colors.grey,
          backgroundColor: context.colorScheme.onPrimaryContainer,
          selectedColor: Colors.white,
          notchedShape: CircularNotchedRectangle(),
          onTabSelected: ((index) {
            setState(() {
              cIndex = index;
            });
          }),
          items: [
            FABBottomAppBarItem(iconData: MyFlutterApp.homebottomicon, text: S
                .of(context)
                .home),
            FABBottomAppBarItem(
                iconData: MyFlutterApp.historybottomicon, text: S
                .of(context)
                .history),
            FABBottomAppBarItem(
                iconData: MyFlutterApp.notificatinonbottomicon, text: S
                .of(context)
                .notification),
            FABBottomAppBarItem(
                iconData: MyFlutterApp.settingbottomicon, text: S
                .of(context)
                .more),
          ],
        ),
        // body: _list[_page],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: cIndex == 0 ? Color(0xffff6671) : Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, QRScanner.routeName);
          },
          child: Image.asset(cIndex == 0
              ? 'lib/icons/scanIcon.png'
              : 'lib/icons/scanBlackIcon.png'),
          elevation: 0,
        ),
      ),
    );
  }
}


