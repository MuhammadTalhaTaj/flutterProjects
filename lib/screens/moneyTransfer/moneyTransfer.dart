import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/icons_variables/icons_variables.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/providers/transefer_money_provider.dart';
import 'package:demo_flutter/screens/moneyTransfer/widgets/slider.dart';
import 'package:demo_flutter/screens/moneyTransfer/widgets/transferDetails.dart';
import 'package:demo_flutter/screens/popUps/successfulPopUp.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

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
        extendBodyBehindAppBar: true,
        appBar: SimpleAppbar(
          name: S.of(context).moneyTransfer,
        ),
        body: Container(
            decoration: BoxDecoration(
              color: context.colorScheme.background,
              image: DecorationImage(
                image: Image.asset(ImageVariables.backgroundImage).image,
                fit: BoxFit.cover,
              ),
            ),
            padding: padding15,
            child: context.isPatriot
                ? const Body()
                : const SingleChildScrollView(
                    child: Body(),
                  )),
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
  bool value1=false;
  bool value2=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 70.h,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 88.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              Image.asset(ImageVariables.searchBarImage).image,
                          fit: BoxFit.fill),
                    ),
                    child: Container(
                        padding: padding10,
                        child: Row(
                          children: [
                            Image.asset(
                              ImageVariables.frame13,
                              height: 60.h,
                              width: 60.w,
                              fit: BoxFit.fill,
                            ),
                            AppSpacer.p8(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Availble Points',
                                  style:
                                      bodyTextStyle().copyWith(fontSize: 19.sp),
                                ),
                                Text(
                                  '125',
                                  style: headingTextStyle(),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                  AppSpacer.p10(),
                  Text(
                    S.of(context).selectAmount,
                    style: bodyTextStyle(),
                  ),
                  AppSpacer.p10(),
                  Consumer<TransferMoneyProvider>(
                    builder: (context, value, child) {
                      return Row(
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
                                  value.decrementValue();
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
                            child: Container(
                              height: 58.h,
                              color: context.colorScheme.onPrimaryContainer,
                              child: Center(
                                child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      '${value.value}',
                                      style: bodyTextStyle()
                                          .copyWith(fontSize: 28.sp),
                                    )),
                              ),
                            ),
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
                                  value.incrementValue();
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
                      );
                    },
                  ),
                  AppSpacer.p24(),
                  CustomSlider(valueChanged: (v) {
                  }),
                  AppSpacer.p20(),
                  TransferDetails(
                    imagePath: IconsVariables.bankTransferIcon,
                    upperText: S.of(context).bankTransfer,
                    lowerText: S.of(context).clickToSelectBankAccount,
                    value: value1,
                    voidCallBack: (){
                      setState(() {
                        value1=!value1;

                        if(value2==true){
                          value2=!value2;
                        }
                      });

                    },
                  ),
                  AppSpacer.p20(),
                  TransferDetails(

                    imagePath: IconsVariables.upiTransferIcon,
                    upperText: S.of(context).upiTransfer,
                    lowerText: S.of(context).selectUpiAddress,
                      value: value2,
                      voidCallBack: (){
                        setState(() {

                          value2=!value2;
                          if(value1==true){
                            value1=!value1;
                          }
                        });
                      },
                  ),
                ],
              ),
              CustomElivitedButton(
                onPress: () {

                  showDialog(context: context, builder: (context) => SuccessfulPopup(),);
                },
                text: S.of(context).submit,
              )
            ],
          ),
        ),
      ],
    );
  }
}
