import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customTextField.dart';
import '../signUp/signup.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // begin: Alignment.centerLeft,
            colors: [Color(0xFF483548), Color(0xff1e051a)],
          )),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height1 * 0.3,
                  child: Image.asset('assets/images/signIn.png'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: height1 * 0.7,
                  decoration: BoxDecoration(
                      color: Color(0xff35192f),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back!',
                            style: headingTextStyle(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Welcome Back please sign in to continue',
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
                              ['Select Type', 'Basic User', 'Pro User'], (value) {},Color(0xff1B021A)),
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
                          CustomTextField(labelText: 'Enter Number',),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Forgot MPIN?',
                              style: subBodyTextStyle(),
                            ),
                          ),
                        ],
                      ),



                      Column(
                        children: [
                          CustomElivitedButton(text: 'Get Started', onPress: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OTP(),));
                          }),
                          SizedBox(height: 10,),
                          Row( mainAxisAlignment:MainAxisAlignment.center,children: [Text('You never work with us?  ',style: subBodyTextStyle(),),GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp(),));}, child: Text('Sign up',style: bodyTextStyle(context),))],)

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



