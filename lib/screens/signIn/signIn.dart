import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/randomData/listRandomData.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../generated/l10n.dart';
import '../signUp/signup.dart';

class SignIn extends StatelessWidget {
  static const routeName = '/sign-in';

  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colorScheme.background,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: context.heightWithoutSafeArea * 0.33,
                  child: Image.asset(ImageVariables.signInImage),
                ),
                Container(
                  padding:const EdgeInsets.all(20),
                  width: double.infinity,
                  height: context.heightWithoutSafeArea * 0.67,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer,
                      borderRadius:const  BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).welcome,
                            style: headingTextStyle(context),
                          ),
                          AppSize(
                            height: 10,
                          ),
                          Text(
                            S.of(context).welcomeBack,
                            style: subBodyTextStyle(),
                          ),
                          AppSize(
                            height: 20,
                          ),
                          Text(
                            S.of(context).selectUserType,
                            style: bodyTextStyle(context),
                          ),
                          AppSize(
                            height: 10,
                          ),

                          CustomDropDownButton(
                            list: listUserType,
                            onPressed: (value) {},
                            color: context.colorScheme.onPrimaryContainer,
                            hint: S.of(context).selectType,
                          ),
                          AppSize(
                            height: 15,
                          ),
                          Text(
                            S.of(context).mobileNumber,
                            style: bodyTextStyle(context),
                          ),
                          AppSize(
                            height: 10,
                          ),
                          CustomTextField(
                            labelText: S.of(context).enterNumber,
                          ),
                          AppSize(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              S.of(context).forgotMpin,
                              style: subBodyTextStyle(),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CustomElivitedButton(
                              text: S.of(context).getStarted,
                              onPress: () {
                                Navigator.pushNamed(context, OTP.routeName);
                              }),
                          AppSize(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).youNeverWorkWithUs,
                                style: subBodyTextStyle(),
                              ),
                              AppSize(
                                width: 5,
                              ),
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
                          )
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
