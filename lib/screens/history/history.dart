import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/history/widgets/historyListContainer.dart';
import 'package:demo_flutter/screens/withdrawalHistory/widgets/historyListContainer.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class History extends StatelessWidget {
  static const routeName = '/history';

  History({Key? key}) : super(key: key);

  List items = [
    {
      'name': 'Adf65hljl',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': 'lib/icons/histIcon.png',
      'rightNumber': '+58'
    },
    {
      'name': 'UPI Transfer',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': 'lib/icons/histIcon.png',
      'rightNumber': '+58'
    },
    {
      'name': 'HDFC Bank',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': 'lib/icons/histIcon.png',
      'rightNumber': '+58'
    },
    {
      'name': 'UPI Transfer',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': 'lib/icons/histIcon.png',
      'rightNumber': '+58'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NameAppbar(),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          child: items.length != 0
              ? ListView.builder(
                  itemBuilder: (context, index) {
                    return OnlyHistoryListContainer(
                      imagePath: items[index]['imagePath'],
                      name: items[index]['name'],
                      date: items[index]['date'],
                      code: items[index]['code'],
                      rightNumber: items[index]['rightNumber'],
                    );
                  },
                  itemCount: items.length,
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImageVariables.historyImage),
                    AppSize(
                      height: 20,
                    ),
                    Text(
                      S.of(context).noData,
                      style: headingTextStyle(context)
                          .copyWith(fontWeight: FontWeight.normal),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
