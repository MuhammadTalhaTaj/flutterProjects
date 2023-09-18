import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/randomData/listRandomData.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../commonwidgets/customElevetedButton.dart';
import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';

class Language extends StatelessWidget {
  static const routeName = '/language';

  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: context.colorScheme.background, //or set color with: Color(0xFF0000FF)
    // ));

    return SafeArea(
      child: Scaffold(
        backgroundColor: context.colorScheme.background,
        body: Container(
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset('assets/images/backgroundImage.png').image,
              fit: BoxFit.cover,
            ),),

          padding: padding16,
           //padding:EdgeInsets.all(16.w),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSize(
                height: context.height * 0.1,
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 300.h,
                        child: Image.asset(
                          ImageVariables.languageImage,
                          fit: BoxFit.fill,
                          // Adjust the height as needed
                        ),
                      ),
                      Text(
                        S.of(context).Language,
                        style: headingTextStyle(),
                      ),
                      AppSize(
                        height: 10.h,
                      ),
                      Text(
                        S.of(context).selectLanguage,
                        style: subBodyTextStyle(),
                      ),
                      AppSize(
                        height: 20.h,
                      ),
                      AppSize(
                        height: 58.h,
                        width: double.infinity,
                        child: CustomDropDownButton(
                          list: listLanguages,
                          onPressed: (value) {},
                          color: context.colorScheme.primaryContainer,
                          hint: S.of(context).selectLanguage,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomElivitedButton(
                  text: S.of(context).getStarted,
                  onPress: () {
                    Navigator.pushNamed(context, SignIn.routeName);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
