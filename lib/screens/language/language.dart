import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customElevetedButton.dart';

class Language extends StatelessWidget {
  static const routeName='language';
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,

          colors: [Color(0xFF493548), Color(0xff1f071e)],
        )),
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/languageImage.png',
                      // Adjust the height as needed
                    ),
                    Text(
                      'Language',
                      style: headingTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please select language to continue',
                      style: subBodyTextStyle(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 58,
                        width: double.infinity,
                        child: CustomDropDownButton([
                          'Select Language',
                          'English',
                          'Spanish',
                          'Mandarin',
                          'Arabic',
                          'Hindi'
                        ], (value) {},Color(0xff331c30))),
                  ],
                ),
              ),
            ),

            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomElivitedButton(
                  text: 'Get Started',
                  onPress: () {
                    Navigator.pushNamed(context, SignIn.routeName);

                  },
                )),
          ],
        ),
      ),
    );
  }
}
