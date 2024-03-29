import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/snackbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/randomData/listRandomData.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../commonwidgets/customElevetedButton.dart';
import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';

class Language extends StatelessWidget {
  static const routeName = '/language';

  final _formKey = GlobalKey<FormState>();

   Language({Key? key}) : super(key: key);

  String? language;

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

              image: Image.asset(ImageVariables.backgroundImage).image,
              fit: BoxFit.cover,
            ),),

          padding: padding16,
           //padding:EdgeInsets.all(16.w),

          child: Form(
            key: _formKey,
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
                        Image.asset(ImageVariables.languageImage),
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
                        CustomDropDownButton(
                          list: listLanguages,
                          onPressed: (value) {
                            language=value;
                          },
                          color: context.colorScheme.primaryContainer,
                          hint: S.of(context).selectLanguage,
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
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        Navigator.pushNamed(context, SignIn.routeName);
                      }
                      else{
                        print('Error');
                      }
                      // if(language==null){
                      //   ScaffoldMessenger.of(context).showSnackBar(customSnackBar('Kindly choose language'));
                      //   print('object');
                      //   return;
                      // }



                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
