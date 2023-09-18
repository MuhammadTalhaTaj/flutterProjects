import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../commonwidgets/customTextField.dart';
import '../../commonwidgets/dottedElevetedButton.dart';
import '../../generated/l10n.dart';
import '../../randomData/listRandomData.dart';

class TeamSupport extends StatelessWidget {
  static const routeName = '/teamSupport';

  const TeamSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar:SimpleAppbar(name: S.of(context).teamSupport),
        backgroundColor: context.colorScheme.background,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset('assets/images/backgroundImage.png').image,
              fit: BoxFit.cover,
            ),),
          child: Column(
            children: [
              SizedBox(height: 40.h,),
              SizedBox(
                height: 0.3.sh,
                child: Image.asset(ImageVariables.teamSupportImage,fit: BoxFit.fill,),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                  //  height: 0.7.sh,
                    decoration: BoxDecoration(
                        color: context.colorScheme.primaryContainer.withOpacity(0.3),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).teamContact,
                          style: headingTextStyle(),
                        ),
                        AppSpacer.p10(),
                        Text(
                          S.of(context).loveToHearFrom,
                          style: subBodyTextStyle(),
                        ),
                        AppSpacer.p24(),


                        Text(
                          S.of(context).yourName,
                          style: bodyTextStyle(),
                        ),
                        AppSpacer.p10(),

                        CustomTextField(
                          labelText: S.of(context).enterName,
                        ),
                        AppSpacer.p15(),

                        Text(
                          S.of(context).yourMail,
                          style: bodyTextStyle(),
                        ),
                        AppSpacer.p10(),

                        CustomTextField(
                          labelText: S.of(context).enterMail,
                        ),
                        AppSpacer.p15(),

                        Text(
                          S.of(context).yourMessage,
                          style: bodyTextStyle(),
                        ),
                        AppSpacer.p10(),

                        AppSize(
                          height: 150,
                          width: double.infinity,
                          child: CustomTextField(
                            maxlines: 5,

                            labelText: S.of(context).enterText,
                          ),
                        ),
                        AppSpacer.p15(),

                        Text(
                          S.of(context).uploadImage,
                          style: bodyTextStyle(),
                        ),
                        AppSpacer.p10(),

                        DottedElevatedButton(),
                        AppSpacer.p32(),

                        CustomElivitedButton(
                            text: S.of(context).submit,
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OTP(),
                                  ));
                            }),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
