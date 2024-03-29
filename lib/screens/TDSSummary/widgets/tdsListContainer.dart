import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../commonwidgets/appsize.dart';
import '../../../constants/app_padding.dart';
import '../../../constants/app_spacer_constants.dart';
import '../../../constants/textStyles.dart';

class TdsListContainer extends StatelessWidget {
  final String imagePath;
  final String name;
  final String date;
  final String code;
  final String rightNumber1;
  final String rightNumber2;
  final String rightNumber3;


  const TdsListContainer({
    super.key,
    required this.imagePath,
    required this.name,
    required this.date,
    required this.code,
    required this.rightNumber1,
    required this.rightNumber2,
    required this.rightNumber3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: padding13,
     // height: 113,
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

                  child: Image.asset(imagePath,fit: BoxFit.fill,),
                ),
              ),
              AppSpacer.p10(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: bodyTextStyle(),
                  ),
                  AppSpacer.p4(),
                  Text(
                    date,
                    style: subBodyTextStyle(),
                  ),

                ],
              )
            ],
          ),
          Column(
            children: [
              pointsContainer(color: const Color(0xff198754), points: rightNumber1),
              AppSpacer.p8(),
              pointsContainer(color: const Color(0xffdc3545), points: rightNumber2),
              AppSize(height: 10,width:70,child: const Divider(color: Color(0xff343a40)),),
              pointsContainer(color: const Color(0xff0d6efd), points: rightNumber3),


            ],
          )
        ],
      ),
    );
  }
}

class pointsContainer extends StatelessWidget {
  final Color color;
  final String points;
  const pointsContainer({
    super.key,
     required this.color, required this.points,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.h,
        width: 43.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: FittedBox(
            fit:BoxFit.scaleDown ,
            child: Text(
      points,
      style: bodyTextStyle().copyWith(color: const Color(0xff20c997)),
    ),
          ),
        ));
  }
}
