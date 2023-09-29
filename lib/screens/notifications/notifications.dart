

import 'dart:ffi';

import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_spacer_constants.dart';
import '../../generated/l10n.dart';

class Notifications extends StatefulWidget {
  static const routeName='/notifications';
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const NameAppbar(),
      body: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          image:  DecorationImage(

            image: Image.asset(ImageVariables.backgroundImage).image,
            fit: BoxFit.cover,
          ),),
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(right: 13, left: 13, bottom: 13),
        child: Column(

          children: [
            SizedBox(height: 90.h,),
            Container(
              color: context.colorScheme.primaryContainer,
              padding: padding8,
             //height: 40.h,
              //width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).clearAllNotification,
                    style: bodyTextStyle(),
                  ),
                  InkWell(
                    onTap:(){
                      print('object jjlkjlk');
                    setState(() {
                      clearNotification();


                    });} ,
                    child: AppSize(
                      height: 55.h,
                      width: 63.w,
                      child: CustomElivitedButton(
                        onPress: () {
                        },
                        text: S.of(context).clear,
                        fontSize: 12.sp,
                        backgroundColor: context.colorScheme.onPrimaryContainer,
                        textColor: context.colorScheme.primary,
                      ),
                    ),
                  )
                ],
              ),
            ),
            AppSpacer.p20(),

            Expanded(
              child: MediaQuery.removePadding(context: context,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final item = notificationData[index];

                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff3e2530), width: 1.5),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            color: context.colorScheme.primaryContainer,
                            padding: padding10,
                            child: Text(
                              item.date,
                              style: bodyTextStyle().copyWith(fontSize: 20.sp),
                            ),
                          ),
                          for (final subItem in item.subItems)
                            Container(
                              width: double.infinity,
                              padding: padding10,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        color: context.colorScheme.primaryContainer,
                                        child: Image.asset(subItem.image, fit: BoxFit.fill),
                                      ),
                                      AppSpacer.p10(),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            subItem.title,
                                            style: bodyTextStyle(),
                                          ),
                                          AppSpacer.p4(),
                                          Text(
                                            subItem.dateDetail,
                                            style: subBodyTextStyle(),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          Divider(
                            indent: 15,
                            color: context.colorScheme.primaryContainer,
                            height: 2,
                            thickness: 1.5,
                            endIndent: 15,
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: notificationData.length,
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}




class NotificationItem {
  final String date;
  final List<SubItem> subItems;

  NotificationItem({
    required this.date,
    required this.subItems,
  });
}

class SubItem {
  final String title;
  final String dateDetail;
  final String image;

  SubItem({
    required this.title,
    required this.dateDetail,
    required this.image,
  });
}

  void clearNotification(){
  notificationData.clear();
  print('clear');

  }

List<NotificationItem> notificationData = [
  NotificationItem(
    date: '15 June 2022',
    subItems: [
      SubItem(
        title: 'Know your mechanic',
        dateDetail: '25 April, 2023',
        image: ImageVariables.notification1Image,
      ),
      SubItem(
        title: 'Happen that',
        dateDetail: '17 April, 2023',
        image: ImageVariables.notification2,
      ),

    ],
  ),
  NotificationItem(
    date: '22 June 2022',
    subItems: [
      SubItem(
        title: 'Know your mechanic',
        dateDetail: '25 April, 2023',
        image: ImageVariables.notification3,
      ),
      SubItem(
        title: 'Know your mechanic',
        dateDetail: '25 April, 2023',
        image: ImageVariables.notification4,
      ),
    ],
  ),
  // Add more data items as needed
];

