import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/snackbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/randomData/listRandomData.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../commonwidgets/customTextField.dart';
import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';
import '../../utils/app_utils/validators/form_validator.dart';
import '../signUp/signup.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/sign-in';

  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String myNumber = '';
  final _formKey = GlobalKey<FormState>();

  //Color mobileTextFieldColor;

  @override
  Widget build(BuildContext context) {
    double height = 1.sh - MediaQuery.of(context).viewPadding.top;
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colorScheme.primaryContainer,
        body: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image: DecorationImage(
              image: Image.asset(ImageVariables.backgroundImage).image,
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.33,
                  child: Image.asset(
                    ImageVariables.signInImage,
                  ),
                ),
                Container(
                  padding: padding16,
                  width: double.infinity,
                  height: height * 0.67,
                  decoration: BoxDecoration(
                      color:
                          context.colorScheme.primaryContainer.withOpacity(0.3),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppSpacer.p8(),
                            Text(
                              S.of(context).welcome,
                              style: headingTextStyle(),
                            ),
                            AppSpacer.p8(),
                            Text(
                              S.of(context).welcomeBack,
                              style: subBodyTextStyle(),
                            ),
                            AppSpacer.p20(),
                            Text(
                              S.of(context).selectUserType,
                              style: bodyTextStyle(),
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
                              style: bodyTextStyle(),
                            ),
                            AppSpacer.p10(),
                            CustomTextField(
                              keyBoardtype: TextInputType.number,
                              labelText: S.of(context).enterNumber,
                              maxLength: 10,
                              validation: (val) {
                                if (val!.isMobileValid() == false)
                                  return 'Enter valid number 10 digits';
                                else
                                  null;
                              },
                              callback: (v) {
                                setState(() {
                                  myNumber = v;
                                });
                              },
                            ),
                            AppSpacer.p5(),
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
                                  if (_formKey.currentState!.validate()) {
                                    // If the form is valid, display a snackbar. In the real world,
                                    // you'd often call a server or save the information in a database.
                                    Navigator.pushNamed(context, OTP.routeName);
                                  } else {
                                    print('Error');
                                  }

                                  // if(myNumber.length<10){
                                  //   ScaffoldMessenger.of(context).showSnackBar(customSnackBar('Kindly Enter Correct Input'));
                                  //   return;
                                  // }
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
                                      style: bodyTextStyle(),
                                    ))
                              ],
                            ),
                           // AppSpacer.p10(),
                          ],
                        )
                      ],
                    ),
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
