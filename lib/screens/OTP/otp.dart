import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/signUp/signUp2.dart';
import 'package:demo_flutter/screens/signUp/signup.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customTextField.dart';

class OTP extends StatelessWidget {
  static const routeName='otp';
  const OTP({Key? key}) : super(key: key);

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
                  height: height1 * 0.5,
                  child: Image.asset('assets/images/otp.png'),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: height1 * 0.5,
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
                            'Enter OTP',
                            style: headingTextStyle(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'We sent OTP on your number.',
                            style: subBodyTextStyle(),
                          ),
                          SizedBox(
                            height: 20,
                          ),


                          Text(
                            'Enter OTP',
                            style: bodyTextStyle(context),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // TODO: Use Pinput Package and make otp fields dont use this fields.
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width:50,height: 45,child: CustomTextField(labelText: "",)),
                              SizedBox(width:50,height: 45,child: CustomTextField(labelText: "",)),
                              SizedBox(width:50,height: 45,child: CustomTextField(labelText: "",)),
                              SizedBox(width:50,height: 45,child: CustomTextField(labelText: "",)),
                              SizedBox(width:50,height: 45,child: CustomTextField(labelText: "",)),
                              SizedBox(width:50,height: 45,child: CustomTextField(labelText: "",)),

                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('01:20',style: TextStyle(color: Colors.redAccent),),
                              SizedBox(width: 10,),
                              Text(
                                'Resend it',
                                style: subBodyTextStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),



                      Column(
                        children: [
                          CustomElivitedButton(text: 'Continue', onPress: (){
                            Navigator.pushNamed(context, SignUp2.routeName);
                          }),
                          SizedBox(height: 10,),
                          Row( mainAxisAlignment:MainAxisAlignment.center,children: [Text('You never work with us?  ',style: subBodyTextStyle(),),GestureDetector(onTap: (){Navigator.pushNamed(context, SignUp.routeName);}, child: Text('Sign up',style: bodyTextStyle(context),))],)

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



