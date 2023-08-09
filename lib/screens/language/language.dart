import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customElevetedButton.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        // TODO: Use const where required.
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
              // TODO: Use colors from Theme file don't use color codes.
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
                    // TODO: create image Variable file and use variable hear in all files.
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
                    // TODO: Create app size class and use that in entire project don't use this type of sizebox every time
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 58,
                        width: double.infinity,
                        // TODO: Use List varible and store all language on that and show hear and select Language is hint text don't use as value.
                        child: CustomDropDownButton([
                          'Select Language',
                          'English',
                          'Spanish',
                          'Mandarin',
                          'Arabic',
                          'Hindi'
                        ], (value) {},
                            // TODO: Use Comma after every parenthesis.
                            Color(0xff331c30))),
                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomElivitedButton(
                  // TODO: Use text from one file.
                  text: 'Get Started',
                  onPress: () {
                    // TODO: Use PushNamed to Navigate In entire project.
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}
