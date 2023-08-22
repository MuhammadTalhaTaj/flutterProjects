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

import '../../commonwidgets/customElevetedButton.dart';
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
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          padding: const EdgeInsets.all(20),
          child: context.isPatriot
              ? const Body()
              : const SingleChildScrollView(
                  child: Body(),
                ),
        ),
      ),
    );
  }
}


class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                ImageVariables.languageImage,
                // Adjust the height as needed
              ),
              Text(
                S.of(context).Language,
                style: headingTextStyle(context),
              ),
              AppSize(
                height: 10,
              ),
              Text(
                S.of(context).selectLanguageToContinue,
                style: subBodyTextStyle(),
              ),
              AppSize(
                height: 20,
              ),
              AppSize(
                height: 58,
                width: double.infinity,
                child: CustomDropDownButton(
                  list: listLanguages,
                  onPressed: (value) {},
                  color: context.colorScheme.primaryContainer,
                  hint: S.of(context).selectLanguage,
                ),
              ),
              AppSize(
                height: 15,
              )
            ],
          ),
        ),
        if (context.isPatriot) Spacer(),
        CustomElivitedButton(
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
      ],
    );
  }
}
