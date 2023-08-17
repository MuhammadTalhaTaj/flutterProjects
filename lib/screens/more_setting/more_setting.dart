import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/more_setting/widgets/settingItem.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/appsize.dart';



class MoreSettings extends StatelessWidget {
  MoreSettings({Key? key}) : super(key: key);

  List settingItems = [
    {'icon': 'lib/icons/edit.png', 'text': 'Edit Profile'},
    {'icon': 'lib/icons/moneyTransfer.png', 'text': 'Money Transfer'},
    {'icon': 'lib/icons/changeMpin.png', 'text': 'Change MPIN'},
    {'icon': 'lib/icons/withdrawalHis.png', 'text': 'Withdrawal His'},
    {'icon': 'lib/icons/privacyPolicy.png', 'text': 'Privacy Policy'},
    {'icon': 'lib/icons/teamSupport.png', 'text': 'Team Support'},
    {'icon': 'lib/icons/logout.png', 'text': 'Log out'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: NameAppbar(),
        body: Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            context.colorScheme.background,
            context.colorScheme.onBackground
          ])),
          child: Column(
            children: [

              Expanded(
                child: AppSize(
                  width: double.infinity,
                  height: 400,
                  child: GridView.builder(
                      itemCount: settingItems.length,

                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

                          childAspectRatio: 3/ 1.8,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10, maxCrossAxisExtent: 200),
                      itemBuilder: (context, index) => SettingItem(settingItems[index]['icon'],settingItems[index]['text'])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

