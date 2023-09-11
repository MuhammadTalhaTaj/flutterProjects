import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customPinput.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/signUp/signUp2.dart';
import 'package:demo_flutter/screens/signUp/signup.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  @override
  Widget build(BuildContext context) {
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
                 // height: context.heightWithoutSafeArea * 0.5,
                height: 0.33.sh,

                  child: Image.asset(ImageVariables.otpImage),
                ),
                Container(
                  padding:  EdgeInsets.all(20.w),
                  width: double.infinity,
               //   height: context.heightWithoutSafeArea * 0.5,
                  height: 0.67.sh,

                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: context.height < 650
                      ? SingleChildScrollView(child: BottomContainer())
                      : BottomContainer(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              height: 10.h,
            ),
            Text(
              S.of(context).weSentOtp,
              style: subBodyTextStyle(),
            ),
            AppSize(
              height: 20.h,
            ),
            Text(
              S.of(context).enterOtp,
              style: bodyTextStyle(context),
            ),
            AppSize(
              height: 10.h,
            ),

             SizedBox(
              width: double.infinity,
              child: CustomPinput(
                length: 6,
                boxHeight: 45.h,
                boxWidth: 45.w,
              ),
            ),
         //   AppSize(height: 15.h,),
          ],
        ),
        // AppSize(
        //   height: 10.h,
        // ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '01:20',
              style: TextStyle(color: context.colorScheme.error),
            ),
            AppSize(
              width: 10.w,
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
              height: 10.h,
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
                      Navigator.pushNamed(context, SignUp.routeName);
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
    );
  }
}
