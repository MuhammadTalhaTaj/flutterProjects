import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/homescreen/homeScreen.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customElevetedButton.dart';
import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';
import '../homescreen/home.dart';

class Congratulation extends StatelessWidget {
  static const routeName = 'congratulation';

  const Congratulation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          image:  DecorationImage(

            image: Image.asset('assets/images/backgroundImage.png').image,
            fit: BoxFit.cover,
          ),),
        padding: padding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppSize(
              height: 0.3.sh,
            ),
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
            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomElivitedButton(
                  text: S.of(context).continue1,
                  onPress: () {
                    Navigator.pushNamed(context, Home.routeName);
                  },
                )),
            const ColumnDivider(),
          ],
        ),
      ),
    );
  }
}
