import 'package:demo_flutter/commonwidgets/dottedElevetedButton.dart';
import 'package:demo_flutter/constants/color_schemes.g.dart';
import 'package:demo_flutter/screens/OTP/otp.dart';
import 'package:demo_flutter/screens/TDSSummary/TDSSummary.dart';
import 'package:demo_flutter/screens/changePin/changePin.dart';
import 'package:demo_flutter/screens/congratulations/congratulation.dart';
import 'package:demo_flutter/screens/connectionLost/connectionLost.dart';
import 'package:demo_flutter/screens/editProfile/editProfile.dart';
import 'package:demo_flutter/screens/failed/failed.dart';
import 'package:demo_flutter/screens/history/history.dart';

import 'package:demo_flutter/screens/homescreen/home.dart';
import 'package:demo_flutter/screens/homescreen/homeScreen.dart';
import 'package:demo_flutter/screens/language/language.dart';
import 'package:demo_flutter/screens/manualEntry/manualEntry.dart';
import 'package:demo_flutter/screens/moneyTransfer/moneyTransfer.dart';
import 'package:demo_flutter/screens/more_setting/more_setting.dart';
import 'package:demo_flutter/screens/notifications/notifications.dart';
import 'package:demo_flutter/screens/panDetails/panDetails.dart';
import 'package:demo_flutter/screens/paymentMethod/paymentMethod.dart';
import 'package:demo_flutter/screens/popUps/logoutPopup.dart';
import 'package:demo_flutter/screens/popUps/somethineWentWrongPopup.dart';
import 'package:demo_flutter/screens/popUps/successfulPopUp.dart';
import 'package:demo_flutter/screens/privacyPolicy/privacyPolicy.dart';
import 'package:demo_flutter/screens/qrCode/qrCode.dart';
import 'package:demo_flutter/screens/qrView/qrView.dart';
import 'package:demo_flutter/screens/serverError/serverError.dart';
import 'package:demo_flutter/screens/signIn/signIn.dart';
import 'package:demo_flutter/screens/signUp/signUp2.dart';
import 'package:demo_flutter/screens/signUp/signup.dart';
import 'package:demo_flutter/screens/teamSupport/teamSupport.dart';
import 'package:demo_flutter/screens/withdrawalHistory/withdrawalHistory.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'generated/l10n.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
    minTextAdapt: true,
    splitScreenMode: true,
    useInheritedMediaQuery: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: lightColorScheme,
        radioTheme: RadioThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white),
        ),
      ),
      localizationsDelegates: const [
        S.delegate,
      ],


      supportedLocales: S.delegate.supportedLocales,
      home: const Language(),




      routes: {
        SignIn.routeName: (ctx) => SignIn(),
        SignUp.routeName: (ctx) => SignUp(),
        SignUp2.routeName: (ctx) => SignUp2(),
        OTP.routeName: (ctx) => OTP(),
        PanUpdate.routeName: (ctx) => PanUpdate(),
        Language.routeName: (ctx) => Language(),
        Failed.routeName: (ctx) => Failed(),
        Congratulation.routeName: (ctx) => Congratulation(),
        EditProfile.routeName: (ctx) => EditProfile(),
        MoneyTransfer.routeName: (ctx) => MoneyTransfer(),
        ChangePin.routeName: (ctx) => ChangePin(),
        WithdrawalHistory.routeName: (ctx) => WithdrawalHistory(),
        PrivacyPolicy.routeName: (ctx) => PrivacyPolicy(),
        TeamSupport.routeName: (ctx) => TeamSupport(),
        LogoutPopup.routeName: (ctx) => LogoutPopup(),
        History.routeName: (ctx) => History(),
        Notifications.routeName: (ctx) => Notifications(),
        TDSSummary.routeName: (ctx) => TDSSummary(),
        ManualEntry.routeName: (ctx) => ManualEntry(),
        QrCode.routeName: (ctx) => QrCode(),
        PaymentMethod.routeName: (ctx) => PaymentMethod(),
        ConnectionLost.routeName: (ctx) => ConnectionLost(),
        QrCode.routeName: (ctx) => QrCode(),
        SuccessfulPopup.routeName: (ctx) => SuccessfulPopup(),
        somethingWentWrongIcons.routeName: (ctx) => somethingWentWrongIcons(),
        ServerError.routeName: (ctx) => ServerError(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        MoreSettings.routeName: (ctx) => MoreSettings(),
        Home.routeName: (ctx) => Home(),
        QRScanner.routeName: (ctx) => QRScanner(),
      },
    );});
}}
