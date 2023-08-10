import 'package:demo_flutter/commonwidgets/cusotmDropdown.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:flutter/material.dart';

import '../../commonwidgets/customElevetedButton.dart';

class Congratulation extends StatelessWidget {
  static const routeName='congratulation';
  const Congratulation({Key? key}) : super(key: key);

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
              height: size.height * 0.25,
            ),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/congragulations.png',
                      // Adjust the height as needed
                    ),
                    Text(
                      'Congratulations 🤩',
                      style: headingTextStyle(context),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Your pan card details verify successfully Approved ',
                      style: subBodyTextStyle(),
                    ),

                  ],
                ),
              ),
            ),
            Spacer(),
            Align(
                alignment: Alignment.bottomCenter,
                child: CustomElivitedButton(
                  text: 'Continue',
                  onPress: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(),));

                  },
                )),
          ],
        ),
      ),
    );
  }
}
