import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customTextField.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class ManualEntry extends StatelessWidget {
  static const routeName='/manualEntry';
  const ManualEntry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: SimpleAppbar(name: S.of(context).manualEntry),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          colors: [
            context.colorScheme.background,
            context.colorScheme.onBackground
          ],
        )),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              children: [
                Image.asset(ImageVariables.manualEntryImage),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).enter12,
                    style: bodyTextStyle(context),
                  ),
                ),
                AppSize(height: 5,),
                AppSize(
                  height: 58,
                  width: double.infinity,
                  child: CustomTextField(
                    labelText: '#### #### ####',
                  ),
                ),
                AppSize(height: 20,),
                AppSize(height: 94,width: double.infinity, child: Image.asset(ImageVariables.couponImage,fit: BoxFit.fill,))
              ],
            ),
            
            CustomElivitedButton(onPress: (){},text: S.of(context).claimCoupon,)
          ],
        ),
      ),
    ));
  }
}