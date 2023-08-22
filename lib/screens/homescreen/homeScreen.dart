import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/screens/changePin/changePin.dart';
import 'package:demo_flutter/screens/manualEntry/manualEntry.dart';
import 'package:demo_flutter/screens/paymentMethod/paymentMethod.dart';
import 'package:demo_flutter/screens/teamSupport/teamSupport.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

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
        appBar: const NameAppbar(),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            context.colorScheme.background,
            context.colorScheme.onBackground
          ])),

          child: SingleChildScrollView(
            child: Column(
              children: [
                AppSize(
                  height: 10,
                ),


                //_________________Top Pic Container___________________//
                AppSize(
                  height: context.isPatriot ? context.height * 0.20 : context.height*0.4,
                  width: context.width * 1,
                  child: const PicHorizontalContainer(),
                ),
                AppSize(
                  height: 15,
                ),



                //________________Slider Container______________//
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AppSize(
                          height: 130,
                          width: 160,
                          child: SliderContainer(
                            number: 124,
                            iconPath: 'lib/icons/checkIcon.png',
                            activeColor: const Color(0xff248d5d),
                            bottomText: S.of(context).availablePoints,
                            iconColor: const Color(0xff248d5d),
                          ),
                        ),
                      ),
                      AppSize(
                        width: context.width*0.05,
                      ),
                      Expanded(
                        child: AppSize(
                          height: 130,
                          width: 160,
                          child: SliderContainer(
                            number: 45,
                            iconPath: 'lib/icons/redeemedIcon.png',
                            activeColor: Color(0xff0d6efd),
                            bottomText: S.of(context).redeemedPoint,
                            iconColor: Color(0xff0d6efd),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AppSize(
                          height: 130,
                          width: 160,
                          child: SliderContainer(
                            number: 96,
                            iconPath: 'lib/icons/process.png',
                            activeColor: Color(0xfffd7314),
                            bottomText: S.of(context).inProcessPoint,
                            iconColor: Color(0xfffd7314),
                          ),
                        ),
                      ),
                      AppSize(
                        width: 15,
                      ),
                      Expanded(
                        child: AppSize(
                          height: 130,
                          width: 160,
                          child: SliderContainer(
                            number: 124,
                            iconPath: 'lib/icons/tax.png',
                            activeColor: const Color(0xffdc3545),
                            bottomText: S.of(context).texDeducted,
                            iconColor: const Color(0xffdc3545),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AppSize(
                  height: 13,
                ),
                
                
                

                //___________________Others______________________//
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).others,
                        style: const TextStyle(color: Colors.white),
                      )),
                ),
                AppSize(
                  height: 13,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, ManualEntry.routeName);
                          },
                          child: BottomComponent(
                            iconPath: 'lib/icons/elementplus.png',
                            text: S.of(context).entry,
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, PaymentMethod.routeName);
                          },
                          child: BottomComponent(
                            iconPath: 'lib/icons/cardedit.png',
                            text: S.of(context).methods,
                          ),
                        ),
                      ),
                      Expanded(
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
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, TeamSupport.routeName);
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

                AppSize(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
