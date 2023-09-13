import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customTextField.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/moneyTransfer/widgets/slider.dart';
import 'package:demo_flutter/screens/moneyTransfer/widgets/transferDetails.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';

class MoneyTransfer extends StatefulWidget {
  static const routeName = '/moneyTransfer';
  const MoneyTransfer({Key? key}) : super(key: key);

  @override
  State<MoneyTransfer> createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppbar(name: S.of(context).moneyTransfer,),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          padding:  padding15,
          child: context.isPatriot?Body():SingleChildScrollView(
            child: Body(),
          )
        ),
      ),
    );
  }
}


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double _value = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 88.h,
              width: double.infinity,
              child: Image.asset(
                ImageVariables.moneyTransferImage,
                fit: BoxFit.fill,
              ),
            ),
           AppSpacer.p10(),
            Text(
              S.of(context).selectAmount,
              style: bodyTextStyle(context),
            ),
            AppSpacer.p10(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: AppSize(
                    height: 58.h,
                    width: 58.w,
                    child: CustomElivitedButton(
                      text: '-',
                      onPress: () {
                        setState(() {
                          _value -= 1;
                        });
                      },
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onPrimaryContainer,
                      textColor: Colors.white,
                      fontSize: 30.sp,
                    ),
                  ),
                ),
                AppSpacer.p10(),
                Expanded(
                  flex: 3,
                  child: AppSize(
                      width: 200.w,
                      height: 58.h,
                      child: CustomTextField(
                        editedText: '\$${_value.toStringAsFixed(0)}',
                        textAlignCenter: true,
                        editedTextSize: 23.sp,
                      )),
                ),
                AppSpacer.p10(),
                Expanded(
                  flex: 1,
                  child: AppSize(
                    height: 58.h,
                    width: 58.w,
                    child: CustomElivitedButton(
                      text: '+',
                      onPress: () {
                        setState(() {
                          _value += 1;
                        });
                      },
                      backgroundColor: Theme.of(context)
                          .colorScheme
                          .onPrimaryContainer,
                      textColor: Colors.white,
                      fontSize: 30.sp,
                    ),
                  ),
                ),
              ],
            ),
            AppSpacer.p24(),
            CustomSlider(valueChanged: (v) {

              setState(() {
                _value = v;
              });
            }),
            AppSpacer.p20(),
            TransferDetails(
              imagePath: 'lib/icons/bankTransferIcon.png',
              upperText: S.of(context).bankTransfer,
              lowerText: S.of(context).clickToSelectBankAccount,
            ),
            AppSpacer.p20(),
            TransferDetails(
              imagePath: 'lib/icons/upiTransferIcon.png',
              upperText: S.of(context).upiTransfer,
              lowerText: S.of(context).selectUpiAddress,
            ),
          ],
        ),
        CustomElivitedButton(
          onPress: () {},
          text: S.of(context).submit,
        )
      ],
    );
  }
}
