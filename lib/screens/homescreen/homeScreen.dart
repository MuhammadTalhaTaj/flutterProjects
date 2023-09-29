import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/icons_variables/icons_variables.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/changePin/changePin.dart';
import 'package:demo_flutter/screens/manualEntry/manualEntry.dart';
import 'package:demo_flutter/screens/paymentMethod/paymentMethod.dart';
import 'package:demo_flutter/screens/teamSupport/teamSupport.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import 'components/bottomcomponents.dart';
import 'components/picshorizontalcontainer.dart';
import 'components/slidercontainer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';

  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const NameAppbar(),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset(ImageVariables.backgroundImage).image,
              fit: BoxFit.cover,
            ),),
          //   padding: EdgeInsets.only(bottom: 20.w),
          child: Column(

            children: [
              SizedBox(height: 80.h,),
              Expanded(
                child: SingleChildScrollView(
                  //vvvv
                  child: Column(
                    children: [
                     AppSpacer.p20(),
                      AppSize(
                        height: context.isPatriot ? 160.h : 200.h,
                        width: 1.sw,
                        child: const PicHorizontalContainer(),
                      ),
                      AppSpacer.p15(),


                      //______________Slider Container__________//
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppSize(
                              height: 130.h,
                              width: 160.w,
                              child: SliderContainer(
                                number: 25,
                                iconPath: IconsVariables.checkIcon,
                                activeColor: const Color(0xff248d5d),
                                bottomText: S.of(context).availablePoints,
                                iconColor: const Color(0xff248d5d),
                              ),
                            ),
                            AppSize(
                              height: 130.h,
                              width: 160.w,
                              child: SliderContainer(
                                number: 25,
                                iconPath: IconsVariables.redeemedIcon,
                                activeColor: const Color(0xff0d6efd),
                                bottomText: S.of(context).redeemedPoint,
                                iconColor: const Color(0xff0d6efd),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppSize(
                              height: 130.h,
                              width: 160.w,
                              child: SliderContainer(
                                number: 50,
                                iconPath: IconsVariables.process,
                                activeColor: const Color(0xfffd7314),
                                bottomText: S.of(context).inProcessPoint,
                                iconColor: const Color(0xfffd7314),
                              ),
                            ),
                            AppSize(
                              height: 130.h,
                              width: 160.w,
                              child: SliderContainer(
                                number: 50,
                                iconPath: IconsVariables.taxIcon,
                                activeColor: const Color(0xffdc3545),
                                bottomText: S.of(context).texDeducted,
                                iconColor: const Color(0xffdc3545),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13.w,vertical: 13.h),

                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              S.of(context).others,
                              style: bodyTextStyle(),
                            )),
                      ),

                      AppSpacer.p12(),

                      Padding(
                        padding: paddingH13,
                        child: Row(
                          children: [
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ManualEntry.routeName);
                                },
                                child: BottomComponent(
                                  iconPath: IconsVariables.elementPlusIcon,
                                  text: S.of(context).entry,
                                ),
                              ),
                            ),
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, PaymentMethod.routeName);
                                },
                                child: BottomComponent(
                                  iconPath: IconsVariables.cardEditIcon,
                                  text: S.of(context).methods,
                                ),
                              ),
                            ),
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, ChangePin.routeName);
                                },
                                child: BottomComponent(
                                  iconPath: IconsVariables.lockIcon,
                                  text: S.of(context).mpin,
                                ),
                              ),
                            ),
                            Flexible(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, TeamSupport.routeName);
                                },
                                child: BottomComponent(
                                  iconPath: IconsVariables.securityUserIcon,
                                  text: S.of(context).help,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      AppSpacer.p20(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
