import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/dottedElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';

class PanUpdate extends StatelessWidget {
  static const routeName = 'pan-update';

  const PanUpdate({Key? key}) : super(key: key);

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
                  height: 0.33.sh,
                  child: Image.asset(ImageVariables.panDetailsImage),
                ),
                Container(
                  padding: padding16,
                  width: double.infinity,
                  height: 0.67.sh,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),

                  //when the height is less then 650 then it should scroll otherwise there can be problem in size so thats why add this logic

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
              S.of(context).addPanDetails,
              style: headingTextStyle(context),
            ),
            AppSize(
              height: 10,
            ),
            Text(
              S.of(context).pleaseEnterPanDetails,
              style: subBodyTextStyle(),
            ),
            AppSize(
              height: 20.h,
            ),
            Text(
              S.of(context).panNumber,
              style: bodyTextStyle(context),
            ),
            AppSize(
              height: 10.h,
            ),
            CustomTextField(
              labelText: S.of(context).enterNumber,
            ),
            AppSize(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                text: S.of(context).note,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: context.colorScheme.error),
                children: [
                  TextSpan(
                      text: S.of(context).loremIspumdolor,
                      style: TextStyle(fontWeight: FontWeight.normal))
                ],
              ),
            ),
            AppSize(
              height: 25.h,
            ),
            Text(
              S.of(context).uploadImage,
              style: bodyTextStyle(context),
            ),
            AppSize(
              height: 10.h,
            ),
            DottedElevatedButton(),
            AppSize(
              height: 15.h,
            )
          ],
        ),
        Column(
          children: [
            CustomElivitedButton(
                text: S.of(context).continue1,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Congratulation(),
                      ));
                }),
            AppSize(
              height: 15.h,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                },
                child: Text(
                  S.of(context).skip,
                  style: bodyTextStyle(context),
                ))
          ],
        )
      ],
    );
  }
}
