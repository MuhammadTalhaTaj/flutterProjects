import 'package:flutter/material.dart';

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
      padding: EdgeInsets.all(8),
      width: 104,
      height: 74,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(upperText,style: headingTextStyle(context),),
          Text(lowerText,style: subBodyTextStyle(),),

        ],),
    );
  }
}