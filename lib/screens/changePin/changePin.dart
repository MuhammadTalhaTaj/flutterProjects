import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customPinput.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_padding.dart';
import '../../constants/snackbar.dart';
import '../../generated/l10n.dart';

class ChangePin extends StatefulWidget {
  const ChangePin({Key? key}) : super(key: key);
  static const routeName = '/changeMPIN';

  @override
  State<ChangePin> createState() => _ChangePinState();
}

class _ChangePinState extends State<ChangePin> {
  bool myOtp=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
      appBar: SimpleAppbar(name: S.of(context).changeMpin),
      body: Container(

        // padding: EdgeInsets.all(15),
        padding: padding16,
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          image:  DecorationImage(

            image: Image.asset(ImageVariables.backgroundImage).image,
            fit: BoxFit.cover,
          ),),
        child: Column(
          children: [
            SizedBox(height: 70.h,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSpacer.p10(),
                      // AppSize(
                      //   height: 10,
                      // ),
                      Text(
                        S.of(context).oldMpin,
                        style: bodyTextStyle(),
                      ),
                      AppSpacer.p10(),

                      Center(
                          child: CustomPinput(
                        length: 4,
                        boxWidth: 59.w,
                        boxHeight: 59.h,
                        width: 30.w, valueChanged: (value) {  },
                      )),
                     AppSpacer.p15(),
                      Text(
                        S.of(context).newMPIN,
                        style: bodyTextStyle(),
                      ),
                     AppSpacer.p10(),
                      Center(
                          child: CustomPinput(
                            length: 4,
                            boxWidth: 59.w,
                            boxHeight: 59.h,
                            width: 30.w, valueChanged: (value) {  },
                          )),
                     AppSpacer.p15(),
                      Text(
                        S.of(context).retypeMPIN,
                        style: bodyTextStyle(),
                      ),
                      AppSpacer.p10(),
                      Center(
                          child: CustomPinput(
                            length: 4,
                            boxWidth: 59.w,
                            boxHeight: 59.h,
                            width: 30.w,
                            valueChanged: (v){

                            },
                          )),
                    ],
                  ),
                  CustomElivitedButton(
                    onPress: () {
                      if(myOtp==false){
                        ScaffoldMessenger.of(context).showSnackBar(customSnackBar('Kindly Enter Correct Input'));
                        // showDialog(context: context, builder: (context) => ValidatorPopup(),);
                        return;
                      }
                    },
                    text: S.of(context).changeMpin,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
