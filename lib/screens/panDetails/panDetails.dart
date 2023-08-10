import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
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
                  height: context.heightWithoutSafeArea * 0.33,
                  child: Image.asset(ImageVariables.panDetailsImage),
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
                  child: Column(
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
                            height: 20,
                          ),
                          Text(
                            S.of(context).panNumber,
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
                          RichText(
                            text: TextSpan(
                              text: S.of(context).note,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: context.colorScheme.error),
                              children: [
                                TextSpan(
                                    text: S.of(context).loremIspumdolor,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal))
                              ],
                            ),
                          ),
                          AppSize(
                            height: 25,
                          ),
                          Text(
                            S.of(context).uploadImage,
                            style: bodyTextStyle(context),
                          ),
                          AppSize(
                            height: 10,
                          ),
                          DottedBorder(
                            dashPattern: [8, 4],
                            color: Colors.white,
                            strokeWidth: 0.5,
                            child: Container(
                              color: context.colorScheme.onPrimaryContainer,
                              height: 58,
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      context.colorScheme.onPrimaryContainer,
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    AppSize(
                                      width: 5,
                                    ),
                                    Text(
                                      'Upload image',
                                      style: bodyTextStyle(context),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
                            height: 15,
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
