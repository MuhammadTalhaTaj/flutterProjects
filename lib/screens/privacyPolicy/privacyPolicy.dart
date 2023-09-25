import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../imageVairableFiles/ImageVariableFiles.dart';

class PrivacyPolicy extends StatelessWidget {
  static const routeName='/privacyPolicy';
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: SimpleAppbar(name: S.of(context).privacyPolicy),
        body: Container(
          padding: const EdgeInsets.all(13),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset(ImageVariables.backgroundImage).image,
              fit: BoxFit.cover,
            ),),
          child: Column(
            children: [
              SizedBox(height: 70.h,),
              Text(
                '${S.of(context).privacy1}\n\n${S.of(context).privacy2}'

                ,
                style: subBodyTextStyle().copyWith(
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
