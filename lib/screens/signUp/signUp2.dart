

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
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../commonwidgets/appsize.dart';
import '../../commonwidgets/customTextField.dart';
import '../../constants/app_padding.dart';
import '../../generated/l10n.dart';
import '../../randomData/listRandomData.dart';

class SignUp2 extends StatelessWidget {
  static const routeName='/sign-up2';
  const SignUp2({Key? key}) : super(key: key);

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
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                //snap: true,
                  floating: false,
                  pinned: false,

                  //  width: double.infinity,
                  expandedHeight: 0.33.sh,
                  flexibleSpace: Container(

                    child: Image.asset(ImageVariables.signUp2Image),
                  )),
              SliverFillRemaining(
                hasScrollBody: true,
                child: Container(
                  padding: padding16,
                  width: double.infinity,
                  height: 0.67.sh,
                  decoration: BoxDecoration(
                      color: context.colorScheme.primaryContainer.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    children: [
                   Icon(Icons.arrow_upward,color: Colors.white,),
                      Expanded(
                        child: SingleChildScrollView(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(S.of(context).welcome,style: headingTextStyle(context),),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  Text(
                                    S.of(context).welcomePleaseSignInTOContinue,
                                    style: subBodyTextStyle(),
                                  ),
                                  AppSize(
                                    height: 20.h,
                                  ),
                                  Text(
                                    S.of(context).selectUserType,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomDropDownButton(
                                    list: listUserType, onPressed:(value) {},color:context.colorScheme.onPrimaryContainer,hint: S.of(context).selectType,),
                                  AppSize(
                                    height: 15.h,
                                  ),
                                  Text(
                                    S.of(context).yourName,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomTextField(

                                    labelText: S.of(context).enterName,
                                  ),
                                  AppSize(
                                    height: 15.h,
                                  ),
                                  Text(

                                    S.of(context).mobileNumber,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomTextField(
                                    keyBoardtype: TextInputType.number,
                                    labelText: S.of(context).enterNumber,
                                  ),
                                  AppSize(
                                    height: 15.h,
                                  ),
                                  Text(
                                    S.of(context).workShopName,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomTextField(
                                    labelText: S.of(context).enterName,
                                  ),
                                  AppSize(
                                    height: 15.h,
                                  ),
                                  Text(
                                    S.of(context).roadName,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomTextField(
                                    labelText: S.of(context).enterName,
                                  ),
                                  AppSize(
                                    height: 15.h,
                                  ),
                                  Text(
                                    S.of(context).pinCode,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomTextField(
                                    keyBoardtype: TextInputType.number,
                                    labelText: S.of(context).enterCode,
                                  ),
                                  AppSize(
                                    height: 15.h,
                                  ),
                                  Text(
                                    S.of(context).yourState,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomDropDownButton(
                                     list: listStates,
                                          onPressed: (value) {},
                                     color: context.colorScheme.onPrimaryContainer,hint: S.of(context).selectState,),
                                  AppSize(
                                    height: 15.h,
                                  ),

                                  Text(
                                    S.of(context).yourCity,
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 10.h,
                                  ),
                                  CustomDropDownButton(
                                   list:listCities,
                                         onPressed: (value) {},
                                      color:context.colorScheme.onPrimaryContainer,hint: S.of(context).selectCity,),
                                  AppSize(
                                    height: 15.h,
                                  ),


                                ],
                              ),
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
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        S.of(context).alreadyMemberWithUs,
                                        style: subBodyTextStyle(),
                                      ),
                                      AppSize(width: 5.w,),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => SignIn(),
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
