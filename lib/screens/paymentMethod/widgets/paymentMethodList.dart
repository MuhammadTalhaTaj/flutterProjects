import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/icons_variables/icons_variables.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/textStyles.dart';

class PaymentMethodListContainer extends StatelessWidget {
  final String imagePath;
  final String name;
  final String date;
  final String code;
  final String rightNumber;
  final VoidCallback onPress;

  const PaymentMethodListContainer({
    super.key,
    required this.imagePath, required this.name, required this.date, required this.code, required this.rightNumber, required this.onPress,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: padding13,

      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
              width: 2.w, color: context.colorScheme.primaryContainer)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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

             AppSpacer.p12(),
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
                 AppSpacer.p8(),
                  Container(
                    padding:padding4,
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
          GestureDetector(
            onTap: onPress,
              child: Image.asset(IconsVariables.deleteIcon2)),

        ],
      ),
    );
  }
}