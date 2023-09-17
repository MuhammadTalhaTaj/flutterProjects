import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/screens/withdrawalHistory/widgets/historyListContainer.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/appsize.dart';
import '../../constants/textStyles.dart';
import '../../generated/l10n.dart';

class WithdrawalHistory extends StatelessWidget {
  static const routeName='/withdrawalHistory';
  WithdrawalHistory({Key? key}) : super(key: key);

  List items = [
    {
      'name': 'HDFC Bank',
      'date': 'May 2023, 11:30 PM',
      'code': '08080800',
      'imagePath': 'lib/icons/bankTransferIcon.png',
      'rightNumber':'58'
    },
    {
      'name': 'UPI Transfer',
      'date': 'May 2023, 11:30 PM',
      'code': '08080800@upi',
      'imagePath': 'lib/icons/upiTransferIcon.png',
      'rightNumber':'58'

    },
    {
      'name': 'HDFC Bank',
      'date': 'May 2023, 11:30 PM',
      'code': '08080800',
      'imagePath': 'lib/icons/bankTransferIcon.png',
      'rightNumber':'58'
    },
    {
      'name': 'UPI Transfer',
      'date': 'May 2023, 11:30 PM',
      'code': '08080800@upi',
      'imagePath': 'lib/icons/upiTransferIcon.png',
      'rightNumber':'58'
    }


  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: SimpleAppbar(name: S.of(context).withdrawalHistory),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset('assets/images/backgroundImage.png').image,
              fit: BoxFit.cover,
            ),),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return HistoryListContainer(
                  imagePath: items[index]['imagePath'],
                  name: items[index]['name'],
                  date: items[index]['date'],
                  code: items[index]['code'],
                rightNumber: items[index]['rightNumber'],
              );
            },
            itemCount: items.length,
          ),
        ),
      ),
    );
  }
}
