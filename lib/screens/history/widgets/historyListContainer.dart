import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../commonwidgets/appsize.dart';
import '../../../constants/app_spacer_constants.dart';
import '../../../constants/textStyles.dart';
import '../history.dart';

class OnlyHistoryListContainer extends StatelessWidget {
  final String imagePath;
  final String name;
  final String date;
  final String code;
  final String rightNumber;

  const OnlyHistoryListContainer({
    super.key,
    required this.imagePath, required this.name, required this.date, required this.code, required this.rightNumber,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all( 10),
      padding: padding13,
      //height: 105.h,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: context.colorScheme.primaryContainer)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48.w,
                height: 51.h,
                color: context.colorScheme.primaryContainer,
                child: Center(

                  child: Image.asset(imagePath),
                ),
              ),

              AppSpacer.p10(),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: bodyTextStyle(context),
                  ),
                  AppSpacer.p5(),

                  Text(
                   date,
                    style: subBodyTextStyle(),
                  ),
                  AppSpacer.p8(),

                  Container(
                    padding: padding4,
                    color:  context.colorScheme.primaryContainer,
                    child: Text(
                      code,
                      style: subBodyTextStyle().copyWith(fontSize: 12.sp),
                    ),
                  )
                ],
              )
            ],
          ),
          Text(rightNumber,style: bodyTextStyle(context).copyWith(color: Color(0xff20c997)),)
        ],
      ),
    );
  }
}