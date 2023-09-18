import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/textStyles.dart';
import 'appsize.dart';

class SimpleAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String name;
  const SimpleAppbar({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: Container(
        padding: padding4,
        width: double.infinity,
       height: 80.h,

        child: Row(
          children: [
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Container(
                height: 44.h,
                width: 44.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 2.w,
                      color: context.colorScheme.primaryContainer),
                ),
                child: Center(
                    child: Icon(
                      size: 25.sp,
                      Icons.arrow_back_ios_new,
                      color: context.colorScheme.primary,
                    )),
              ),
            ),
            AppSpacer.p15(),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(name,style: headingTextStyle().copyWith(fontWeight: FontWeight.normal),))
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>  Size.fromHeight(80.h);
}
