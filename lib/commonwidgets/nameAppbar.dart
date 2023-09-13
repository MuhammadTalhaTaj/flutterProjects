import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/l10n.dart';

class NameAppbar extends StatelessWidget implements PreferredSizeWidget {
  const NameAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
       //   height: 100.h,
          padding:  EdgeInsets.all(13.w),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).heyJohn,
                    style: headingTextStyle(context)
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    S.of(context).welcomeToTheLoyaltyApp,
                    style: bodyTextStyle(context),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xC9270F26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 02,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                      10), // Adjust the value for roundness
                ),
                width: 100.w,
                child: Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     SizedBox(height: 23.h,width: 23.w, child: Image.asset('lib/icons/star.png',fit: BoxFit.fill,)),
                       Text(
                        '1562',
                        style: bodyTextStyle(context).copyWith(fontSize: 20.sp),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize =>  Size.fromHeight(105.h);
}
