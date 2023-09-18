import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customPinput.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
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
import '../../constants/app_padding.dart';
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
    double height=1.sh-MediaQuery.of(context).viewPadding.top;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image: DecorationImage(
              image: Image.asset('assets/images/backgroundImage.png').image,
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  // height: context.heightWithoutSafeArea * 0.5,
                  height: 0.33*height,

                  child: Image.asset(ImageVariables.otpImage),
                ),
                Container(
                  padding: padding16,
                  width: double.infinity,
                  //   height: context.heightWithoutSafeArea * 0.5,
                  height: 0.67*height,

                  decoration: BoxDecoration(
                      color:  context.colorScheme.primaryContainer.withOpacity(0.3),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: BottomContainer(),
                ),
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
      //mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).enterOtp,
              style: headingTextStyle(),
            ),
            AppSpacer.p10(),
            Text(
              S.of(context).weSentOtp,
              style: subBodyTextStyle(),
            ),
            AppSpacer.p20(),

            Text(
              S.of(context).enterOtp,
              style: bodyTextStyle(),
            ),
            AppSpacer.p10(),

            SizedBox(
              width: double.infinity,
              child: CustomPinput(
                length: 6,
                boxHeight: 45.h,
                boxWidth: 45.w,
              ),
            ),
            AppSpacer.p20(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '01:20',
                  style: TextStyle(color: context.colorScheme.error),
                ),
                AppSpacer.p10(),
                Text(
                  S.of(context).resend,
                  style: subBodyTextStyle(),
                ),
              ],
            ),

            //   AppSize(height: 15.h,),
          ],
        ),




        Column(
          children: [
            CustomElivitedButton(
                text: S.of(context).continue1,
                onPress: () {
                  Navigator.pushNamed(context, SignUp2.routeName);
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
                      Navigator.pushNamed(context, SignUp.routeName);
                    },
                    child: Text(
                      S.of(context).signUp,
                      style: bodyTextStyle(),
                    ))
              ],
            )
          ],
        )
      ],
    );
  }
}
