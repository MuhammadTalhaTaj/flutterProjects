import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/app_padding.dart';

import 'package:demo_flutter/icons_variables/icons_variables.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/TDSSummary/TDSSummary.dart';
import 'package:demo_flutter/screens/changePin/changePin.dart';
import 'package:demo_flutter/screens/editProfile/editProfile.dart';
import 'package:demo_flutter/screens/moneyTransfer/moneyTransfer.dart';
import 'package:demo_flutter/screens/more_setting/widgets/settingItem.dart';
import 'package:demo_flutter/screens/popUps/logoutPopup.dart';
import 'package:demo_flutter/screens/privacyPolicy/privacyPolicy.dart';
import 'package:demo_flutter/screens/teamSupport/teamSupport.dart';
import 'package:demo_flutter/screens/withdrawalHistory/withdrawalHistory.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class MoreSettings extends StatelessWidget {
  static const routeName = '/moreSettings';

  MoreSettings({Key? key}) : super(key: key);

  List settingItems = [
    {'icon': IconsVariables.editIcon, 'text': 'Edit Profile'},
    {'icon': IconsVariables.moneyTransfer, 'text': 'Money Transfer'},
    {'icon': IconsVariables.changeMpinIcon, 'text': 'Change MPIN'},
    {'icon': IconsVariables.withdrawalHis, 'text': 'Withdrawal History'},
    {'icon': IconsVariables.privacyPolicy, 'text': 'Privacy Policy'},
    {'icon': IconsVariables.teamSupportIcon, 'text': 'Team Support'},
    {'icon': IconsVariables.summaryIcon, 'text': 'TDS Summary'},
    {'icon': IconsVariables.logout, 'text': 'Log out'}
  ];

  List navigationsScreens = [
    EditProfile.routeName,
    MoneyTransfer.routeName,
    ChangePin.routeName,
    WithdrawalHistory.routeName,
    PrivacyPolicy.routeName,
    TeamSupport.routeName,
    TDSSummary.routeName
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const NameAppbar(),
        body: Container(
          padding:paddingH13,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset(ImageVariables.backgroundImage).image,
              fit: BoxFit.cover,
            ),),
          child: Column(

            children: [
             SizedBox(height: 90.h,),
              Expanded(
                child: MediaQuery.removePadding(context: context,
                  child: GridView.builder(
                      itemCount: settingItems.length,
                      gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
                          childAspectRatio: 3 / 1.8,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          maxCrossAxisExtent: 200),
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            if (index != 7) {
                              Navigator.pushNamed(
                                  context, navigationsScreens[index]);
                            } else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const LogoutPopup();
                                },
                              );
                            }
                          },
                          child: SettingItem(settingItems[index]['icon'],
                              settingItems[index]['text']))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
