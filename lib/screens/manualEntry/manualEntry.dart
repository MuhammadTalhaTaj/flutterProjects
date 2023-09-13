import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customTextField.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_padding.dart';
import '../../constants/app_spacer_constants.dart';
import '../../generated/l10n.dart';

class ManualEntry extends StatelessWidget {
  static const routeName = '/manualEntry';

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
        padding: padding15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 200.h,child: Image.asset(ImageVariables.manualEntryImage,fit: BoxFit.fill,)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).enter12,
                    style: bodyTextStyle(context),
                  ),
                ),
               AppSpacer.p5(),
                AppSize(
                  height: 58.h,
                  width: double.infinity,
                  child: CustomTextField(
                    labelText: '#### #### ####',
                  ),
                ),
               AppSpacer.p20(),
                AppSize(
                    height: 94.h,
                    width: double.infinity,
                    child: Image.asset(
                      ImageVariables.couponImage,
                      fit: BoxFit.fill,
                    ))
              ],
            ),
            CustomElivitedButton(
              onPress: () {},
              text: S.of(context).claimCoupon,
            )
          ],
        ),
      ),
    ));
  }
}
