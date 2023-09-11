import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomComponent extends StatelessWidget {
  final String iconPath;
  final text;
  const BottomComponent({Key? key, required this.iconPath, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 110.h,
      width: 90.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(29.0),
            child: Card(
              elevation: 10,
              color: context.colorScheme.surface,
              child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Image.asset(iconPath,fit:BoxFit.fill,height: 40.h,width: 40.w,)),
            ),
          ),
          Text('$text',style: subBodyTextStyle(),)
        ],
      ),
    );
  }
}
