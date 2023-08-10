

import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/panDetails/panDetails.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customTextField.dart';

class SignUp2 extends StatelessWidget {
  static const routeName='/sign-up2';
  const SignUp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // begin: Alignment.centerLeft,
            colors: [Color(0xFF483548), Color(0xff1e051a)],
          )),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                //snap: true,
                  floating: false,
                  pinned: false,

                  //  width: double.infinity,
                  expandedHeight: height1 * 0.3,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          // begin: Alignment.centerLeft,
                          colors: [Color(0xFF483548), Color(0xff1e051a)],
                        )),
                    child: Image.asset('assets/images/signup2.png'),
                  )),
              SliverFillRemaining(
                hasScrollBody: true,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: height1 * 0.7,
                  decoration: BoxDecoration(
                      color: Color(0xff35192f),
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
                                  Row(
                                    children: [
                                      Text(
                                        'Welcome ',
                                        style: headingTextStyle(context),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.waving_hand,
                                        color: Colors.yellow,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Welcome please sign in to continue',
                                    style: subBodyTextStyle(),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Select user type',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomDropDownButton(
                                      ['Select Type', 'Basic User', 'Pro User'],
                                      (value) {},
                                      Color(0xff1B021A)),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Your Name',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    labelText: 'Enter Name',
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Mobile Number',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    labelText: 'Enter Number',
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Workshop Name',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    labelText: 'Enter Name',
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Road Name',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    labelText: 'Enter Name',
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Pin code',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                    labelText: 'Enter Code',
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Your State',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomDropDownButton(
                                      ['Select State', 'US', 'UK'],
                                          (value) {},
                                      Color(0xff1B021A)),
                                  SizedBox(
                                    height: 15,
                                  ),

                                  Text(
                                    'Your City',
                                    style: bodyTextStyle(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CustomDropDownButton(
                                      ['Select City', 'Basic User', 'Pro User'],
                                          (value) {},
                                      Color(0xff1B021A)),
                                  SizedBox(
                                    height: 15,
                                  ),


                                ],
                              ),
                              Column(
                                children: [
                                  CustomElivitedButton(
                                      text: 'Get Started',
                                      onPress: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => PanUpdate(),
                                            ));
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Already member with us?  ',
                                        style: subBodyTextStyle(),
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => SignIn(),
                                                ));
                                          },
                                          child: Text(
                                            'Log in',
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
