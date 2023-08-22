import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/homescreen/homeScreen.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customElevetedButton.dart';
import '../../generated/l10n.dart';
import '../homescreen/home.dart';

class Congratulation extends StatelessWidget {
  static const routeName='congratulation';
  const Congratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,

              colors: [context.colorScheme.background, context.colorScheme.onBackground],
            )),
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment:context.height<640? MainAxisAlignment.start:MainAxisAlignment.center,
              children: [

                Center(
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(
                          ImageVariables.congratulationsImage,
                          // Adjust the height as needed
                        ),
                        Text(
                          S.of(context).congratulations,
                          style: headingTextStyle(context),
                        ),
                        AppSize(
                          height: 10,
                        ),
                        Text(
                          S.of(context).yourPanCardSuccessfully,
                          style: subBodyTextStyle(),
                        ),

                      ],
                    ),
                  ),
                ),


              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomElivitedButton(
                  text: S.of(context).continue1,
                  onPress: () {
                    Navigator.pushNamed(context, Home.routeName);

                  },
                )),
          ],
        ),
      ),
    );
  }
}
