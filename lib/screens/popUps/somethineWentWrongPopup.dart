import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class SomethingWentWrongPopup extends StatelessWidget {
  static const routeName='/somethingWentWrong';
  const SomethingWentWrongPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      content: Container(
        padding: EdgeInsets.all(10),
        height: 80.h,
        width: 350.w,
        color: Color(0xffa30010),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Flexible(
            child: Row(
              children: [
                Image.asset('lib/icons/cancelIcon.png'),
                AppSpacer.p5(),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(S.of(context).someThingWentWrong,style: bodyTextStyle(),),
                      AppSize(height: 2.h,),
                      Text(S.of(context).loremIpsum,style: subBodyTextStyle().copyWith(fontSize: 12.sp),)
                    ],),
                ),
              ],
            ),
          ),

            Align(
              alignment: Alignment.topRight,
                child: GestureDetector(onTap: (){Navigator.pop(context);}, child: Image.asset('lib/icons/crossIcon.png')))
        ],),
      ),
    );
  }
}
