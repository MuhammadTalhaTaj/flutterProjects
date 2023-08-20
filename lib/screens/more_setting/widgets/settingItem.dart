import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

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
          color: context.colorScheme.onPrimaryContainer,
          border: Border.all(color: Color(text!='Log out'?0xff495057:0xffdc3545))),
      padding: EdgeInsets.all(15),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,

            child: Image.asset(icon),),
          AppSize(
            height: 15,
          ),
          Text(
            text,
            style: bodyTextStyle(context).copyWith(color: text!='Log out'?Colors.white:Color(0xffdc3545)),
          ),
        ],
      ),
    );
  }
}