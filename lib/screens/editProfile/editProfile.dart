import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/panDetails/panDetails.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../generated/l10n.dart';
import '../../randomData/listRandomData.dart';

class EditProfile extends StatefulWidget {
  static const routeName = '/sign-up2';

  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isYesSelected = false;

  bool isNoSelected = false;

  void _handleRadioValueChange(bool value, bool isYes) {
    setState(() {
      if (isYes) {
        isYesSelected = value;
        isNoSelected = !value;
      } else {
        isNoSelected = value;
        isYesSelected = !value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                  //snap: true,
                  floating: false,
                  pinned: false,

                  //  width: double.infinity,
                  expandedHeight: context.heightWithoutSafeArea * 0.33,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      // begin: Alignment.centerLeft,
                      colors: [Color(0xFF483548), Color(0xff1e051a)],
                    )),
                    child: Image.asset(ImageVariables.signUp2Image),
                  )),
              SliverFillRemaining(
                hasScrollBody: true,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: double.infinity,
                  height: context.height * 0.67,
                  decoration: const BoxDecoration(
                      color: Color(0xff35192f),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Edit Profile',
                                    style: headingTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 78,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/person.jpg',
                                              width: 78,
                                              height: double.infinity,
                                            ),
                                            AppSize(
                                              width: 7,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Image Name',
                                                  style: bodyTextStyle(context),
                                                ),
                                                AppSize(
                                                  height: 3,
                                                ),
                                                Text(
                                                  'format.jpg',
                                                  style: subBodyTextStyle(),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                'lib/icons/uploadIcon.png'),
                                            AppSize(
                                              width: 5,
                                            ),
                                            Image.asset(
                                                'lib/icons/deleteIcon.png')
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  AppSize(
                                    height: 25,
                                  ),
                                  Text(
                                    S.of(context).yourName,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    editedText: "Brooklyn Simmons",
                                  ),
                                  AppSize(
                                    height: 15,
                                  ),
                                  Text(
                                    S.of(context).mobileNumber,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    editedText: '(629)555-0129',
                                  ),
                                  AppSize(
                                    height: 15,
                                  ),
                                  Text(
                                    S.of(context).workShopName,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    editedText: 'Floyd Miles',
                                  ),
                                  AppSize(
                                    height: 15,
                                  ),
                                  Text(
                                    S.of(context).roadName,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    editedText: 'Jane Cooper',
                                  ),
                                  AppSize(
                                    height: 15,
                                  ),
                                  Text(
                                    S.of(context).pinCode,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    editedText: '740',
                                  ),
                                  AppSize(
                                    height: 15,
                                  ),
                                  Text(
                                    S.of(context).yourState,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  CustomDropDownButton(
                                    list: listStates,
                                    onPressed: (value) {},
                                    color:
                                        context.colorScheme.onPrimaryContainer,
                                    selected: 'Basic Cooper',
                                  ),
                                  AppSize(
                                    height: 15,
                                  ),
                                  Text(
                                    S.of(context).yourCity,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  CustomDropDownButton(
                                    list: listCities,
                                    onPressed: (value) {},
                                    color:
                                        context.colorScheme.onPrimaryContainer,
                                    selected: 'Devon Lane',
                                  ),
                                  AppSize(
                                    height: 15,
                                  ),
                                  Text(
                                    'Do you want to ad pan card?',
                                    style: bodyTextStyle(context),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Radio<bool>(

                                            activeColor: Colors.blue,

                                            value: true,
                                            groupValue: isYesSelected,
                                            onChanged: (value) {
                                              _handleRadioValueChange(
                                                  value!, true);
                                            },
                                          ),
                                          Text(
                                            'Yes',
                                            style: bodyTextStyle(context),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Radio<bool>(
                                            activeColor: Colors.blue,
                                            value: true,
                                            groupValue: isNoSelected,
                                            onChanged: (value) {
                                              _handleRadioValueChange(
                                                  value!, false);
                                            },
                                          ),
                                          Text(
                                            'No',
                                            style: bodyTextStyle(context),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppSize(height: 30,),
                              Column(
                                children: [
                                  CustomElivitedButton(
                                      text: S.of(context).getStarted,
                                      onPress: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => PanUpdate(),
                                            ));
                                      }),
                                  AppSize(
                                    height: 10,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        S.of(context).alreadyMemberWithUs,
                                        style: subBodyTextStyle(),
                                      ),
                                      AppSize(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignIn(),
                                                ));
                                          },
                                          child: Text(
                                            S.of(context).logIn,
                                            style: bodyTextStyle(context),
                                          ))
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
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
