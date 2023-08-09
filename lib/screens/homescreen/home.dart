import 'package:flutter/material.dart';


import 'appbar.dart';
import 'homescreen/homescreen.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  //GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Scaffold(
          body: HomeScreen(),

          bottomNavigationBar: FABBottomAppBar(


            centerItemText: '',
            color: Colors.grey,
            backgroundColor: Color(0xFF281125),
            selectedColor: Colors.white,
            notchedShape: CircularNotchedRectangle(),
            onTabSelected: ((_) {}),
            items: [
              FABBottomAppBarItem(iconData: Icons.home_filled, text: 'Home'),
              FABBottomAppBarItem(iconData: Icons.history, text: 'History'),
              FABBottomAppBarItem(
                  iconData: Icons.notifications, text: 'Notification'),
              FABBottomAppBarItem(iconData: Icons.more_horiz, text: 'More'),
            ],
          ),
          // body: _list[_page],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.settings_overscan,color: Color(0xFF281125),size: 35,),
            elevation: 0,
          ),
        ));

  }
}
