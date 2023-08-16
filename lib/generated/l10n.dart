// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Loyalty Flutter`
  String get appName {
    return Intl.message(
      'Loyalty Flutter',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get Language {
    return Intl.message(
      'Language',
      name: 'Language',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Welcome 👋`
  String get welcome {
    return Intl.message(
      'Welcome 👋',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back please sign in to continue`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back please sign in to continue',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Select user type`
  String get selectUserType {
    return Intl.message(
      'Select user type',
      name: 'selectUserType',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter Number`
  String get enterNumber {
    return Intl.message(
      'Enter Number',
      name: 'enterNumber',
      desc: '',
      args: [],
    );
  }

  /// `Forgot MPIN?`
  String get forgotMpin {
    return Intl.message(
      'Forgot MPIN?',
      name: 'forgotMpin',
      desc: '',
      args: [],
    );
  }

  /// `You never work with us?`
  String get youNeverWorkWithUs {
    return Intl.message(
      'You never work with us?',
      name: 'youNeverWorkWithUs',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Select Type`
  String get selectType {
    return Intl.message(
      'Select Type',
      name: 'selectType',
      desc: '',
      args: [],
    );
  }

  /// `Create account`
  String get createAccount {
    return Intl.message(
      'Create account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Fill all the details to create account`
  String get fillAllDetailsToCreateAccount {
    return Intl.message(
      'Fill all the details to create account',
      name: 'fillAllDetailsToCreateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already member with us?`
  String get alreadyMemberWithUs {
    return Intl.message(
      'Already member with us?',
      name: 'alreadyMemberWithUs',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Welcome please sign in to continue`
  String get welcomePleaseSignInTOContinue {
    return Intl.message(
      'Welcome please sign in to continue',
      name: 'welcomePleaseSignInTOContinue',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get yourName {
    return Intl.message(
      'Your Name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `Workshop Name`
  String get workShopName {
    return Intl.message(
      'Workshop Name',
      name: 'workShopName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Name`
  String get enterName {
    return Intl.message(
      'Enter Name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Road Name`
  String get roadName {
    return Intl.message(
      'Road Name',
      name: 'roadName',
      desc: '',
      args: [],
    );
  }

  /// `Pin code`
  String get pinCode {
    return Intl.message(
      'Pin code',
      name: 'pinCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter Code`
  String get enterCode {
    return Intl.message(
      'Enter Code',
      name: 'enterCode',
      desc: '',
      args: [],
    );
  }

  /// `Your State`
  String get yourState {
    return Intl.message(
      'Your State',
      name: 'yourState',
      desc: '',
      args: [],
    );
  }

  /// `Select State`
  String get selectState {
    return Intl.message(
      'Select State',
      name: 'selectState',
      desc: '',
      args: [],
    );
  }

  /// `Your City`
  String get yourCity {
    return Intl.message(
      'Your City',
      name: 'yourCity',
      desc: '',
      args: [],
    );
  }

  /// `Select City`
  String get selectCity {
    return Intl.message(
      'Select City',
      name: 'selectCity',
      desc: '',
      args: [],
    );
  }

  /// `Add PAN Details`
  String get addPanDetails {
    return Intl.message(
      'Add PAN Details',
      name: 'addPanDetails',
      desc: '',
      args: [],
    );
  }

  /// `Please enter pan details to continue`
  String get pleaseEnterPanDetails {
    return Intl.message(
      'Please enter pan details to continue',
      name: 'pleaseEnterPanDetails',
      desc: '',
      args: [],
    );
  }

  /// `PAN Number`
  String get panNumber {
    return Intl.message(
      'PAN Number',
      name: 'panNumber',
      desc: '',
      args: [],
    );
  }

  /// `Note: `
  String get note {
    return Intl.message(
      'Note: ',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet consectetur. Lorem ipsum dolor sit amet.`
  String get loremIspumdolor {
    return Intl.message(
      'Lorem ipsum dolor sit amet consectetur. Lorem ipsum dolor sit amet.',
      name: 'loremIspumdolor',
      desc: '',
      args: [],
    );
  }

  /// `Upload Your Image`
  String get uploadImage {
    return Intl.message(
      'Upload Your Image',
      name: 'uploadImage',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue1 {
    return Intl.message(
      'Continue',
      name: 'continue1',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP`
  String get enterOtp {
    return Intl.message(
      'Enter OTP',
      name: 'enterOtp',
      desc: '',
      args: [],
    );
  }

  /// `We sent OTP on your number.`
  String get weSentOtp {
    return Intl.message(
      'We sent OTP on your number.',
      name: 'weSentOtp',
      desc: '',
      args: [],
    );
  }

  /// `Resend it`
  String get resend {
    return Intl.message(
      'Resend it',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Oops! 😒`
  String get oop {
    return Intl.message(
      'Oops! 😒',
      name: 'oop',
      desc: '',
      args: [],
    );
  }

  /// `Your pan card details not verify with original details.`
  String get yourPanCardDetails {
    return Intl.message(
      'Your pan card details not verify with original details.',
      name: 'yourPanCardDetails',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations 🤩`
  String get congratulations {
    return Intl.message(
      'Congratulations 🤩',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `Your pan card details verify successfully Approved `
  String get yourPanCardSuccessfully {
    return Intl.message(
      'Your pan card details verify successfully Approved ',
      name: 'yourPanCardSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Available Point`
  String get availablePoints {
    return Intl.message(
      'Available Point',
      name: 'availablePoints',
      desc: '',
      args: [],
    );
  }

  /// `Redeemed Point`
  String get redeemedPoint {
    return Intl.message(
      'Redeemed Point',
      name: 'redeemedPoint',
      desc: '',
      args: [],
    );
  }

  /// `In-Process Point`
  String get inProcessPoint {
    return Intl.message(
      'In-Process Point',
      name: 'inProcessPoint',
      desc: '',
      args: [],
    );
  }

  /// `Tex Deducted`
  String get texDeducted {
    return Intl.message(
      'Tex Deducted',
      name: 'texDeducted',
      desc: '',
      args: [],
    );
  }

  /// `OTHERS`
  String get others {
    return Intl.message(
      'OTHERS',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `Entry`
  String get entry {
    return Intl.message(
      'Entry',
      name: 'entry',
      desc: '',
      args: [],
    );
  }

  /// `Methods`
  String get methods {
    return Intl.message(
      'Methods',
      name: 'methods',
      desc: '',
      args: [],
    );
  }

  /// `MPIN`
  String get mpin {
    return Intl.message(
      'MPIN',
      name: 'mpin',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Hey! john`
  String get heyJohn {
    return Intl.message(
      'Hey! john',
      name: 'heyJohn',
      desc: '',
      args: [],
    );
  }

  /// `welcome to the loyalty app`
  String get welcomeToTheLoyaltyApp {
    return Intl.message(
      'welcome to the loyalty app',
      name: 'welcomeToTheLoyaltyApp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
