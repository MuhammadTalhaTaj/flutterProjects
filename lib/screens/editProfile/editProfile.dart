import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/panDetails/panDetails.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../generated/l10n.dart';
import '../../randomData/listRandomData.dart';

class EditProfile extends StatefulWidget {
  static const routeName = '/editProfile';

  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isYesSelected = true;

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
           color: context.colorScheme.background,
            image:  DecorationImage(

              image: Image.asset('assets/images/backgroundImage.png').image,
              fit: BoxFit.cover,
            ),),
          child: CustomScrollView(
            slivers: [
              //todo : use app bar from other file
              SliverAppBar(
                automaticallyImplyLeading: false,
                  //snap: true,
                  floating: false,
                  pinned: false,
                  elevation: 0,
                  backgroundColor: Colors.transparent,

                  expandedHeight:  0.33.sh,
                  flexibleSpace: Container(
                    color: Colors.transparent,
                    child: Image.asset(ImageVariables.signUp2Image,fit: BoxFit.fitHeight,),
                  )),
              SliverFillRemaining(
                hasScrollBody: true,
                child: Container(
                  padding:  EdgeInsets.only(right: 15.w,left: 15.w,top: 15.h),
                  width: double.infinity,
                  height: context.height * 0.67,
                  decoration:  BoxDecoration(
                      color: context.colorScheme.primaryContainer.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    children: [
                      Image.asset('lib/icons/barIcon.png',color: context.colorScheme.primary,height: 30.h,width: 60.w,fit: BoxFit.fitWidth,),
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
                                    S.of(context).editProfile,
                                    //todo : use navigator key to not pass context.
                                    style: headingTextStyle(),
                                  ),
                                  AppSize(
                                    height: 10,
                                  ),
                                  Container(

                                    height: 78.h,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(

                                              ImageVariables.personImage,
                                              width: 78.w,
                                              height: double.infinity,
                                            ),
                                            AppSpacer.p8(),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  S.of(context).imageName,
                                                  style: bodyTextStyle(),
                                                ),
                                                AppSpacer.p4(),
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
                                                //todo : change path from lib to assets/icon and move all icons in assets and use path from variable file
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
                                  AppSpacer.p24(),
                                  Text(
                                    S.of(context).yourName,
                                    style: bodyTextStyle(),
                                  ),
                                  AppSpacer.p10(),
                                  CustomTextField(
                                    editedText: "Brooklyn Simmons",
                                  ),
                                  AppSpacer.p15(),
                                  Text(
                                    S.of(context).mobileNumber,
                                    style: bodyTextStyle(),
                                  ),
                                  AppSpacer.p10(),
                                  CustomTextField(
                                    keyBoardtype: TextInputType.number,
                                    editedText: '(629)555-0129',
                                  ),
                                  AppSpacer.p15(),
                                  Text(
                                    S.of(context).workShopName,
                                    style: bodyTextStyle(),
                                  ),
                                  AppSpacer.p10(),
                                  CustomTextField(
                                    editedText: 'Floyd Miles',
                                  ),
                                  AppSpacer.p15(),
                                  Text(
                                    S.of(context).roadName,
                                    style: bodyTextStyle(),
                                  ),
                                  AppSpacer.p10(),
                                  CustomTextField(
                                    editedText: 'Jane Cooper',
                                  ),
                                  AppSpacer.p15(),
                                  Text(
                                    S.of(context).pinCode,
                                    style: bodyTextStyle(),
                                  ),
                                  AppSpacer.p10(),
                                  CustomTextField(
                                    keyBoardtype: TextInputType.number,
                                    editedText: '740',
                                  ),
                                  AppSpacer.p15(),
                                  Text(
                                    S.of(context).yourState,
                                    style: bodyTextStyle(),
                                  ),
                                  AppSpacer.p10(),
                                  CustomDropDownButton(
                                    list: listStates,
                                    onPressed: (value) {},
                                    color:
                                        context.colorScheme.onPrimaryContainer,
                                    selected: 'Basic Cooper',
                                  ),
                                  AppSpacer.p15(),
                                  Text(
                                    S.of(context).yourCity,
                                    style: bodyTextStyle(),
                                  ),
                                  AppSpacer.p10(),
                                  CustomDropDownButton(
                                    list: listCities,
                                    onPressed: (value) {},
                                    color:
                                        context.colorScheme.onPrimaryContainer,
                                    selected: 'Devon Lane',
                                  ),
                                  AppSpacer.p15(),
                                  Text(
                                    S.of(context).doYouWantToAddPanCard,
                                    style: bodyTextStyle(),
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
                                            S.of(context).yes,
                                            style: bodyTextStyle(),
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
                                            S.of(context).no,
                                            style: bodyTextStyle(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppSpacer.p32(),
                              Column(
                                children: [
                                  CustomElivitedButton(
                                      text: S.of(context).editProfile,
                                      onPress: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>isYesSelected? PanUpdate():Congratulation(),
                                            ));
                                      }),
                                  AppSpacer.p10(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        S.of(context).alreadyMemberWithUs,
                                        style: subBodyTextStyle(),
                                      ),
                                      AppSpacer.p5(),
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
                                            style: bodyTextStyle(),
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
