import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../commonwidgets/appsize.dart';
import '../../../constants/textStyles.dart';

class SettingItem extends StatelessWidget {
  final String icon;
  final String text;

  SettingItem(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //  color: context.colorScheme.onPrimaryContainer,
          border: Border.all(
              color: text != 'Log out' ?Color(0xff495057):Color(0xffdc3545))),
      padding: padding15,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40.h,
            child: Image.asset(icon),
          ),

          SizedBox(
            child: Text(
              text,
              style: bodyTextStyle().copyWith(
                fontSize: 14.sp,
                  color: text != 'Log out' ? Colors.white : Color(0xffdc3545)),
            ),
          ),
        ],
      ),
    );
  }
}
