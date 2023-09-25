import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/icons_variables/icons_variables.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/history/widgets/historyListContainer.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_spacer_constants.dart';
import '../../generated/l10n.dart';

class History extends StatelessWidget {
  static const routeName = '/history';

  History({Key? key}) : super(key: key);

  List items = [
    {
      'name': 'Adf65hljl',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': IconsVariables.histIcon,
      'rightNumber': '+58'
    },
    {
      'name': 'UPI Transfer',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': IconsVariables.histIcon,
      'rightNumber': '+58'
    },
    {
      'name': 'HDFC Bank',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': IconsVariables.histIcon,
      'rightNumber': '+58'
    },
    {
      'name': 'UPI Transfer',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath':IconsVariables.histIcon,
      'rightNumber': '+58'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const NameAppbar(),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset(ImageVariables.backgroundImage).image,
              fit: BoxFit.cover,
            ),),
          child: Column(

            children: [
              SizedBox(height: 80.h,),
              items.length != 0
                  ? Expanded(
                    child: MediaQuery.removePadding(context: context,
                      child: ListView.builder(
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
                        ),
                    ),
                  )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(ImageVariables.historyImage),
                        AppSpacer.p20(),

                        Text(
                          S.of(context).noData,
                          style: headingTextStyle()
                              .copyWith(fontWeight: FontWeight.normal),
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
