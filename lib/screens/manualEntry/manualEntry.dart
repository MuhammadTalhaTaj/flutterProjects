import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customTextField.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/popUps/successfulPopUp.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/validators/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_padding.dart';
import '../../constants/app_spacer_constants.dart';
import '../../constants/snackbar.dart';
import '../../generated/l10n.dart';
import '../popUps/somethineWentWrongPopup.dart';

class ManualEntry extends StatefulWidget {

  static const routeName = '/manualEntry';

  const ManualEntry({Key? key}) : super(key: key);

  @override
  State<ManualEntry> createState() => _ManualEntryState();
}

class _ManualEntryState extends State<ManualEntry> {
  String couponCode='';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
      appBar: SimpleAppbar(name: S.of(context).manualEntry),
      body: Container(
        width: double.infinity,
 decoration: BoxDecoration(
        color: context.colorScheme.background,
        image:  DecorationImage(

          image: Image.asset(ImageVariables.backgroundImage).image,
          fit: BoxFit.cover,
        ),),
        padding: padding15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 80.h,),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 200.h,child: Image.asset(ImageVariables.manualEntryImage,fit: BoxFit.fill,)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).enter12,
                        style: bodyTextStyle(),
                      ),
                    ),
                   AppSpacer.p5(),
                    AppSize(
                      height: 58.h,
                      width: double.infinity,
                      child: CustomTextField(
                        keyBoardtype: TextInputType.number,
                        labelText: '#### #### ####',
                        maxLength: 14,
                        spacer: true,
                        callback: (v){

                          setState(() {

                            couponCode=v;
                          });

                        },
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
              ),
            ),


            CustomElivitedButton(
              onPress: () {
                if(couponCode.isCouponValid()){
                  if(couponCode=='2222 2222 2222') {
                    showDialog(context: context,
                      builder: (context) => SuccessfulPopup(),);
                  }
                  else{
                    showDialog(context: context,
                      builder: (context) => SomethingWentWrongPopup(),);
                  }
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(customSnackBar);
                  // showDialog(context: context, builder: (context) => ValidatorPopup(),);
                  return;
                }
              },
              text: S.of(context).claimCoupon,
            )
          ],
        ),
      ),
    ));
  }
}
