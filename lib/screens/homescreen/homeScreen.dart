import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
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
        appBar: NameAppbar(),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            context.colorScheme.background,
            context.colorScheme.onBackground
          ])),
          //   padding: EdgeInsets.only(bottom: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSize(
                  height: 20.h,
                ),
                AppSize(
                  height: context.isPatriot ? 160.h : 200.h,
                  width: 1.sw,
                  child: const PicHorizontalContainer(),
                ),
                AppSize(
                  height: 15.h,
                ),
                Padding(
                  padding: padding13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSize(
                        height: 130.h,
                        width: 160.w,
                        child: SliderContainer(
                          number: 124,
                          iconPath: 'lib/icons/checkIcon.png',
                          activeColor: Color(0xff248d5d),
                          bottomText: S.of(context).availablePoints,
                          iconColor: Color(0xff248d5d),
                        ),
                      ),
                      AppSize(
                        height: 130.h,
                        width: 160.w,
                        child: SliderContainer(
                          number: 45,
                          iconPath: 'lib/icons/redeemedIcon.png',
                          activeColor: Color(0xff0d6efd),
                          bottomText: S.of(context).redeemedPoint,
                          iconColor: Color(0xff0d6efd),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: padding13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppSize(
                        height: 130.h,
                        width: 160.w,
                        child: SliderContainer(
                          number: 96,
                          iconPath: 'lib/icons/process.png',
                          activeColor: Color(0xfffd7314),
                          bottomText: S.of(context).inProcessPoint,
                          iconColor: Color(0xfffd7314),
                        ),
                      ),
                      AppSize(
                        height: 130.h,
                        width: 160.w,
                        child: SliderContainer(
                          number: 124,
                          iconPath: 'lib/icons/tax.png',
                          activeColor: Color(0xffdc3545),
                          bottomText: S.of(context).texDeducted,
                          iconColor: Color(0xffdc3545),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: paddingH13,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).others,
                        style: bodyTextStyle(context),
                      )),
                ),

                AppSpacer.p12(),

                Padding(
                  padding: paddingH13,
                  child: Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ManualEntry.routeName);
                            },
                            child: BottomComponent(
                              iconPath: 'lib/icons/elementplus.png',
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
                              iconPath: 'lib/icons/cardedit.png',
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
                              iconPath: 'lib/icons/lock.png',
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
                              iconPath: 'lib/icons/securityuser.png',
                              text: S.of(context).help,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ColumnDivider(
                  space: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
