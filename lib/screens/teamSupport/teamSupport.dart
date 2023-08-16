import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customTextField.dart';
import '../../commonwidgets/dottedElevetedButton.dart';
import '../../generated/l10n.dart';
import '../../randomData/listRandomData.dart';

class TeamSupport extends StatelessWidget {
  static const routeName = '/sign-up';

  const TeamSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:SimpleAppbar(name: 'Team Support'),
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
                  height: context.heightWithoutSafeAreaAndAppbar * 0.3,
                  child: Image.asset(ImageVariables.teamSupportImage),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: context.heightWithoutSafeAreaAndAppbar * 0.7,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Team Contact',
                              style: headingTextStyle(context),
                            ),
                            AppSize(
                              height: 10,
                            ),
                            Text(
                              "Love to hear from you, let’s connect",
                              style: subBodyTextStyle(),
                            ),
                            AppSize(
                              height: 25,),



                            Text(
                              S.of(context).yourName,
                              style: bodyTextStyle(context),
                            ),
                            AppSize(
                              height: 10,
                            ),
                            CustomTextField(
                              labelText: S.of(context).enterName,
                            ),
                            AppSize(
                              height: 15,
                            ),
                            Text(
                              'Your Mail',
                              style: bodyTextStyle(context),
                            ),
                            AppSize(
                              height: 10,
                            ),
                            CustomTextField(
                              labelText: 'Enter mail',
                            ),
                            AppSize(
                              height: 15,
                            ),
                            Text(
                              'Your Message',
                              style: bodyTextStyle(context),
                            ),
                            AppSize(
                              height: 10,
                            ),
                            AppSize(
                              height: 150,
                              width: double.infinity,
                              child: CustomTextField(
                                labelText: 'Enter text..',
                              ),
                            ),
                            AppSize(
                              height: 15,
                            ),
                            Text(
                              'Upload Image',
                              style: bodyTextStyle(context),
                            ),
                            AppSize(
                              height: 10,
                            ),
                            DottedElevatedButton(),
                            AppSize(
                              height: 30,
                            )

                          ],
                        ),
                        Column(
                          children: [
                            CustomElivitedButton(
                                text: 'Submit',
                                onPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => OTP(),
                                      ));
                                }),

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
