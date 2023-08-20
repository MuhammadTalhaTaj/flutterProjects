import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customPinput.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class ChangePin extends StatefulWidget {
  static const routeName='/changeMPIN';
  const ChangePin({Key? key}) : super(key: key);

  @override
  State<ChangePin> createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: SimpleAppbar(name: S.of(context).changeMpin),
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          // begin: Alignment.centerLeft,
          colors: [
            context.colorScheme.background,
            context.colorScheme.onBackground
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSize(height: 10,),
                Text(
                  S.of(context).oldMpin,
                  style: bodyTextStyle(context),
                ),
                AppSize(height: 10,),
                Center(child: CustomPinput(length: 4,boxWidth: 59,boxHeight: 59,width: 30,)),
                AppSize(height: 15,),
                Text(
                  S.of(context).oldMpin,
                  style: bodyTextStyle(context),
                ),
                AppSize(height: 10,),
                Center(child: CustomPinput(length: 4,boxWidth: 59,boxHeight: 59,width: 30,)),
                AppSize(height: 15,),
                Text(
                  S.of(context).oldMpin,
                  style: bodyTextStyle(context),
                ),
                AppSize(height: 10,),
                Center(child: CustomPinput(length: 4,boxWidth: 59,boxHeight: 59,width: 30,)),

              ],
            ),
            
            CustomElivitedButton(onPress: (){},text:S.of(context).changeMpin ,)
          ],
        ),
      ),
    ));
  }
}
