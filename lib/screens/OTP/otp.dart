import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/signUp/signUp2.dart';
import 'package:demo_flutter/screens/signUp/signup.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../generated/l10n.dart';

class OTP extends StatefulWidget {
  static const routeName = '/otp';

  OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final pinController = TextEditingController();

  final focusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    var fillColor = context.colorScheme.onPrimaryContainer;
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(

      width: 50,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        border: Border.all(color: borderColor),
      ),
    );

    return SafeArea(
      child: Scaffold(
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
                  height: context.heightWithoutSafeArea * 0.5,
                  child: Image.asset(ImageVariables.otpImage),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: context.heightWithoutSafeArea * 0.5,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer,
                      borderRadius: const BorderRadius.only(
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
                              S.of(context).enterOtp,
                              style: headingTextStyle(context),
                            ),
                            AppSize(
                              height: 10,
                            ),
                            Text(
                              S.of(context).weSentOtp,
                              style: subBodyTextStyle(),
                            ),
                            AppSize(
                              height: 20,
                            ),

                            Text(
                              S.of(context).enterOtp,
                              style: bodyTextStyle(context),
                            ),
                            AppSize(
                              height: 10,
                            ),
                            Pinput(

                              length: 6,
                              controller: pinController,
                              focusNode: focusNode,
                              androidSmsAutofillMethod:
                                  AndroidSmsAutofillMethod.smsUserConsentApi,
                              listenForMultipleSmsOnAndroid: true,
                              defaultPinTheme: defaultPinTheme,
                              separatorBuilder: (index) =>
                                  const SizedBox(width: 8),
                              validator: (value) {
                                return value == '2222'
                                    ? null
                                    : 'Pin is incorrect';
                              },
                              // onClipboardFound: (value) {
                              //   debugPrint('onClipboardFound: $value');
                              //   pinController.setText(value);
                              // },
                              hapticFeedbackType:
                                  HapticFeedbackType.lightImpact,
                              onCompleted: (pin) {
                                debugPrint('onCompleted: $pin');
                              },
                              onChanged: (value) {
                                debugPrint('onChanged: $value');
                              },
                              cursor: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(

                                    margin: const EdgeInsets.only(bottom: 9),
                                    width: 22,
                                    height: 1,
                                    color: focusedBorderColor,
                                  ),
                                ],
                              ),
                              focusedPinTheme: defaultPinTheme.copyWith(
                                decoration:
                                    defaultPinTheme.decoration!.copyWith(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              submittedPinTheme: defaultPinTheme.copyWith(
                                decoration:
                                    defaultPinTheme.decoration!.copyWith(
                                  color: fillColor,
                                  borderRadius: BorderRadius.circular(19),
                                  border: Border.all(color: focusedBorderColor),
                                ),
                              ),
                              errorPinTheme: defaultPinTheme.copyBorderWith(
                                border: Border.all(color: Colors.redAccent),
                              ),
                            ),
                          ]),
                      AppSize(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '01:20',
                            style: TextStyle(color: context.colorScheme.error),
                          ),
                          AppSize(
                            width: 10,
                          ),
                          Text(
                            S.of(context).resend,
                            style: subBodyTextStyle(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CustomElivitedButton(
                              text: S.of(context).continue1,
                              onPress: () {
                                Navigator.pushNamed(context, SignUp2.routeName);
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
