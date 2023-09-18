import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
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
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          color: Colors.transparent,
          // decoration: BoxDecoration(
          // color: context.colorScheme.background,
          // image:  DecorationImage(
          //
          //   image: Image.asset('assets/images/backgroundImage.png').image,
          //   fit: BoxFit.cover,
          // ),),
       //   height: 100.h,
          padding:  padding10,
          //width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).heyJohn,
                    style: headingTextStyle()
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    S.of(context).welcomeToTheLoyaltyApp,
                    style: bodyTextStyle(),
                  )
                ],
              ),

              Container(
                padding: padding10,
                decoration: BoxDecoration(
                  color: const Color(0xC9270F26),
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
               // width: 100.w,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   SizedBox(height: 23.h,width: 23.w, child: Image.asset('lib/icons/star.png',fit: BoxFit.fill,)),
                     AppSpacer.p5(),
                     SizedBox(
                       width: 55.w,
                       height: 23.h,
                       child: FittedBox(
                         fit: BoxFit.scaleDown,
                         child: Text(
                          '989770',
                          //style: TextStyle(color: Colors.white),
                          style: bodyTextStyle().copyWith(fontSize: 20.sp),
                    ),
                       ),
                     )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Size get preferredSize =>  Size.fromHeight(105.h);
}
