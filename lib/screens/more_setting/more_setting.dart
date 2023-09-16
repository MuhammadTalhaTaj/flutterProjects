import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
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

import '../../commonwidgets/appsize.dart';
import '../popUps/somethineWentWrongPopup.dart';
import '../popUps/successfulPopUp.dart';

class MoreSettings extends StatelessWidget {
  static const routeName = '/moreSettings';

  MoreSettings({Key? key}) : super(key: key);

  List settingItems = [
    {'icon': 'lib/icons/edit.png', 'text': 'Edit Profile'},
    {'icon': 'lib/icons/moneyTransfer.png', 'text': 'Money Transfer'},
    {'icon': 'lib/icons/changeMpin.png', 'text': 'Change MPIN'},
    {'icon': 'lib/icons/withdrawalHis.png', 'text': 'Withdrawal History'},
    {'icon': 'lib/icons/privacyPolicy.png', 'text': 'Privacy Policy'},
    {'icon': 'lib/icons/teamSupport.png', 'text': 'Team Support'},
    {'icon': 'lib/icons/summaryIcon.png', 'text': 'TDS Summary'},
    {'icon': 'lib/icons/logout.png', 'text': 'Log out'}
  ];

  List NavigationsScreens = [
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
        appBar: NameAppbar(),
        body: Container(
          padding:paddingH13,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset('assets/images/backgroundImage.png').image,
              fit: BoxFit.cover,
            ),),
          child: Column(

            children: [
              AppSpacer.p10(),
              Expanded(
                child: GridView.builder(
                    itemCount: settingItems.length,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        childAspectRatio: 3 / 1.8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        maxCrossAxisExtent: 200),
                    itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          if (index != 7) {
                            Navigator.pushNamed(
                                context, NavigationsScreens[index]);
                          } else {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return LogoutPopup();
                              },
                            );
                          }
                        },
                        child: SettingItem(settingItems[index]['icon'],
                            settingItems[index]['text']))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
