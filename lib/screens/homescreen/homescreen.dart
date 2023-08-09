import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/bottomcomponents.dart';
import 'components/namecontainer.dart';
import 'components/picshorizontalcontainer.dart';
import 'components/slidercontainer.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int val = 0;

  @override
  Widget build(BuildContext context) {
    const activeCardColor = Color(0xFF1D1E33);
    const inactiveCardColor = Color(0xFF111328);
    double width = MediaQuery.of(context).size.width;
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;


    double size = MediaQuery.of(context).size.height - // total height
        MediaQuery.of(context).padding.top - // top padding
        kBottomNavigationBarHeight;

    return SingleChildScrollView(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(13),
          child: Column(
            children: [
              NameContainer(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: isPortrait?160:200,
                width: width*1,
                child: PicHorizontalContainer(),
              ),

              SizedBox(
                height: 320,
                width: width,
                child: GridView.count(
                  childAspectRatio: isPortrait? 1.3: 3,
                  primary: false,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: <Widget>[
                    SliderContainer(number: 124,IconData: Icons.security_update_good,activeColor: Colors.green,bottomText: 'Availble Point',),
                    SliderContainer(number: 45,IconData: Icons.upload_file_rounded,activeColor: Colors.blueAccent,bottomText: 'Redeemed Point',),
                    SliderContainer(number: 96,IconData: Icons.pages_rounded,activeColor: Colors.deepOrangeAccent,bottomText: 'In-Process Point',),
                    SliderContainer(number: 124,IconData: Icons.percent_sharp,activeColor: Colors.red,bottomText: 'Tex Deducted',),

                  ],
                ),
              ),

              SizedBox(
                height: 13,
              ),

              Align(
                 alignment: Alignment.centerLeft,
                  child: Text('OTHERS',style: TextStyle(color: Colors.white),)),
              SizedBox(
                height: 13,
              ),

              Row(
                children: [
                  BottomComponent(iconData: Icons.grid_view,text: 'Entry',),
                  BottomComponent(iconData: Icons.file_copy,text: 'Mehtods',),
                  BottomComponent(iconData: Icons.lock_open_rounded,text: 'MPIN',),
                  BottomComponent(iconData: Icons.person_pin_outlined,text: 'Help',),

                ],
              )

            ],
          ),
        ),
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
      ),
    );


  }
}
