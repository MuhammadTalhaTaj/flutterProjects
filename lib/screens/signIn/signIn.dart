import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/randomData/listRandomData.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/popUps/logoutPopup.dart';
import 'package:demo_flutter/screens/popUps/validatorPopUp.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';
import '../popUps/somethineWentWrongPopup.dart';
import '../signUp/signup.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/sign-in';

   SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String myNumber='';

  @override
  Widget build(BuildContext context) {
    double height=1.sh-MediaQuery.of(context).viewPadding.top;
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colorScheme.primaryContainer,
        body: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset('assets/images/backgroundImage.png').image,
              fit: BoxFit.cover,
            ),),

       //   width: double.infinity,
       //    decoration: BoxDecoration(
       //        gradient: LinearGradient(
       //          // begin: Alignment.centerLeft,
       //          colors: [
       //            context.colorScheme.background,
       //            context.colorScheme.onBackground
       //          ],
       //        )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(

                       //height: context.heightWithoutSafeArea*0.33,

                  height:  height*0.33,
                  child: Image.asset(ImageVariables.signInImage),
                ),


                Container(
                  padding: padding16,
                  width: double.infinity,
                  height: height*0.67,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer.withOpacity(0.3),
                      borderRadius:  const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppSpacer.p10(),
                          Text(
                            S.of(context).welcome,
                            style: headingTextStyle(context),
                          ),
                          AppSpacer.p10(),
                          Text(
                            S.of(context).welcomeBack,
                            style: subBodyTextStyle(),
                          ),
                          AppSpacer.p20(),
                          Text(
                            S.of(context).selectUserType,
                            style: bodyTextStyle(context),
                          ),
                          AppSpacer.p10(),

                          CustomDropDownButton(
                            list: listUserType,
                            onPressed: (value) {},
                            color: context.colorScheme.onPrimaryContainer,
                            hint: S.of(context).selectType,
                          ),
                          AppSpacer.p15(),
                          Text(
                            S.of(context).mobileNumber,
                            style: bodyTextStyle(context),
                          ),
                          AppSpacer.p10(),
                          CustomTextField(
                            keyBoardtype: TextInputType.number,
                            labelText: S.of(context).enterNumber,
                            callback: (v){
                              setState(() {
                                myNumber=v;
                              });



                            },
                          ),
                          AppSpacer.p10(),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              S.of(context).forgotMpin,
                              style: subBodyTextStyle(),
                            ),
                          ),
                        ],
                      ),

                      // SizedBox(
                      //   height:120.h ,
                      // ),

                      Column(
                        children: [
                          CustomElivitedButton(
                              text: S.of(context).getStarted,
                              onPress: () {

                                if(myNumber.length<10){
                                  showDialog(context: context, builder: (context) => ValidatorPopup(),);
                                  return;
                                }
                                Navigator.pushNamed(context, OTP.routeName);
                              }),
                          AppSpacer.p10(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).youNeverWorkWithUs,
                                style: subBodyTextStyle(),
                              ),
                              AppSpacer.p5(),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, SignUp.routeName);
                                  },
                                  child: Text(
                                    S.of(context).signUp,
                                    style: bodyTextStyle(context),
                                  ))
                            ],
                          ),
                          AppSpacer.p10(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
