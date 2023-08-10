import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customElevetedButton.dart';
import '../../generated/l10n.dart';

class Failed extends StatelessWidget {
  static const routeName='/failed';
  const Failed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,

              colors: [context.colorScheme.background, context.colorScheme.onBackground],
            )),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSize(
              height: size.height * 0.25,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      ImageVariables.failedImage,
                      // Adjust the height as needed
                    ),
                    AppSize(
                      height: 20,
                    ),
                    Text(
                      S.of(context).oop,
                      style: headingTextStyle(context),
                    ),
                    AppSize(
                      height: 10,
                    ),
                    Text(
                      S.of(context).yourPanCardDetails,
                      style: subBodyTextStyle(),
                    ),

                  ],
                ),
              ),
            ),
            const Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomElivitedButton(
                  text: S.of(context).continue1,
                  onPress: () {
                    Navigator.pushNamed(context, SignIn.routeName);

                  },
                )),
          ],
        ),
      ),
    );
  }
}
