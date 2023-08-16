import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../constants/textStyles.dart';
import 'appsize.dart';

class SimpleAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String name;
  const SimpleAppbar({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        padding: EdgeInsets.all(7),
        width: double.infinity,
        height: Size.fromHeight(kToolbarHeight).height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ])),
        child: Row(
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: context.colorScheme.primaryContainer),
              ),
              child: Center(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: context.colorScheme.primary,
                  )),
            ),
            AppSize(width: 15,),
            Text(name,style: headingTextStyle(context).copyWith(fontWeight: FontWeight.normal),)
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
