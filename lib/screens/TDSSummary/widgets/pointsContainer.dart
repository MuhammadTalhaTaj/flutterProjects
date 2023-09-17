import 'package:demo_flutter/constants/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/textStyles.dart';

class PointsContainer extends StatelessWidget {
  final Color color;
  final String upperText;
  final String lowerText;

  const PointsContainer({
    super.key, required this.color, required this.upperText, required this.lowerText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding8,
       width: 104.w,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(upperText,style: headingTextStyle(context),),
          FittedBox(
              fit: BoxFit.scaleDown,
              child:
              Text(lowerText,style: subBodyTextStyle(),)
    ),

        ],),
    );
  }
}