import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customTextField.dart';
import '../../generated/l10n.dart';
import '../../randomData/listRandomData.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/sign-up';

  const SignUp({Key? key}) : super(key: key);

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
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: context.heightWithoutSafeArea * 0.33,
                  child: Image.asset(ImageVariables.signUpImage),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: context.heightWithoutSafeArea * 0.67,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: context.height < 650
                      ? SingleChildScrollView(
                          child: BottomContainer(),
                        )
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
              S.of(context).createAccount,
              style: headingTextStyle(context),
            ),
            AppSize(
              height: 10,
            ),
            Text(
              S.of(context).fillAllDetailsToCreateAccount,
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
              hint: 'Select Type',
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
          ],
        ),
        Column(
          children: [
            CustomElivitedButton(
                text: S.of(context).getStarted,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OTP(),
                      ));
                }),
            AppSize(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).alreadyMemberWithUs,
                  style: subBodyTextStyle(),
                ),
                AppSize(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ),
                    );
                  },
                  child: Text(
                    S.of(context).logIn,
                    style: bodyTextStyle(context),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
