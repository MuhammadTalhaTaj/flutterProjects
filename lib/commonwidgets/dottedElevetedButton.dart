import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/textStyles.dart';
import 'appsize.dart';

class DottedElevatedButton extends StatelessWidget {
  String text;

  DottedElevatedButton({this.text='Upload image'});

  @override
  Widget build(BuildContext context) {
    return  DottedBorder(
      dashPattern: [8, 4],
      color: Colors.white,
      strokeWidth: 0.5,
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minHeight: 50
        ),
        child: Container(
          color: context.colorScheme.onPrimaryContainer,
          height: 58.h,
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
              context.colorScheme.onPrimaryContainer,
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20.sp,
                ),
                AppSize(
                  width: 5.w,
                ),
                Text(
                  text,
                  style: bodyTextStyle(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
