import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class ServerError extends StatelessWidget {
  static const routeName='serverError';
  const ServerError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          image:  DecorationImage(

            image: Image.asset(ImageVariables.backgroundImage).image,
            fit: BoxFit.cover,
          ),),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageVariables.serverErrorImage),
            AppSize(
              height: 10,
            ),
            Text(
              S.of(context).serverError,
              style: headingTextStyle(),
            ),
            AppSize(
              height: 10,
            ),
            Text(
              '${S.of(context).server1}\n${S.of(context).server2}',
              style: subBodyTextStyle(),
              textAlign: TextAlign.center,
            ),
            AppSize(
              height: 10,
            ),
            AppSize(
                width: 159,
                height: 47,
                child: CustomElivitedButton(
                  onPress: () {},
                  backgroundColor: context.colorScheme.onPrimaryContainer,
                  text: S.of(context).tryAgain,
                  textColor: context.colorScheme.primary,
                ))
          ],
        ),
      ),
    ));
  }
}
