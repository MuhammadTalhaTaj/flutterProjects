import 'package:demo_flutter/commonwidgets/dottedElevetedButton.dart';
import 'package:demo_flutter/constants/color_schemes.g.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/TDSSummary/TDSSummary.dart';
import 'package:demo_flutter/screens/changePin/changePin.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/editProfile/editProfile.dart';
import 'package:demo_flutter/screens/failed/failed.dart';
import 'package:demo_flutter/screens/history/history.dart';

import 'package:demo_flutter/screens/homescreen/home.dart';
import 'package:demo_flutter/screens/homescreen/homeScreen.dart';
import 'package:demo_flutter/screens/language/language.dart';
import 'package:demo_flutter/screens/manualEntry/manualEntry.dart';
import 'package:demo_flutter/screens/moneyTransfer/moneyTransfer.dart';
import 'package:demo_flutter/screens/panDetails/panDetails.dart';
import 'package:demo_flutter/screens/paymentMethod/paymentMethod.dart';
import 'package:demo_flutter/screens/privacyPolicy/privacyPolicy.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/screens/signUp/signUp2.dart';
import 'package:demo_flutter/screens/signUp/signup.dart';
import 'package:demo_flutter/screens/teamSupport/teamSupport.dart';
import 'package:demo_flutter/screens/withdrawalHistory/withdrawalHistory.dart';
import 'package:demo_flutter/serverError/serverError.dart';
import 'package:flutter/material.dart';

import 'generated/l10n.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        colorScheme: lightColorScheme,


        radioTheme: RadioThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.white),


      )),
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: ServerError(),
      routes: {
        SignIn.routeName: (ctx) => SignIn(),
        SignUp.routeName: (ctx) => SignUp(),
        SignUp2.routeName: (ctx) => SignUp2(),
        OTP.routeName: (ctx) => OTP(),
        PanUpdate.routeName: (ctx) => PanUpdate(),
        Language.routeName: (ctx) => Language(),
        Failed.routeName: (ctx) => Failed(),
        Congratulation.routeName: (ctx) => Congratulation(),
      },
    );
  }
}


