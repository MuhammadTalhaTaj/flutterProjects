import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customElevetedButton.dart';
import '../../generated/l10n.dart';

class Failed extends StatelessWidget {
  static const routeName='/failed';
  const Failed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          image:  DecorationImage(

            image: Image.asset(ImageVariables.backgroundImage).image,
            fit: BoxFit.cover,
          ),),
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
                          ImageVariables.failedImage,
                          // Adjust the height as needed
                        ),
                        AppSize(
                          height: 20,
                        ),
                        Text(
                          S.of(context).oop,
                          style: headingTextStyle(),
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


              ],
            ),
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
