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

  /// `Please select language to continue`
  String get selectLanguageToContinue {
    return Intl.message(
      'Please select language to continue',
      name: 'selectLanguageToContinue',
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

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
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

  /// `Upload Image`
  String get uploadImage {
    return Intl.message(
      'Upload Image',
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

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `Image Name`
  String get imageName {
    return Intl.message(
      'Image Name',
      name: 'imageName',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to ad pan card?`
  String get doYouWantToAddPanCard {
    return Intl.message(
      'Do you want to ad pan card?',
      name: 'doYouWantToAddPanCard',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Money Transfer`
  String get moneyTransfer {
    return Intl.message(
      'Money Transfer',
      name: 'moneyTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Select Amount`
  String get selectAmount {
    return Intl.message(
      'Select Amount',
      name: 'selectAmount',
      desc: '',
      args: [],
    );
  }

  /// `Bank Transfer`
  String get bankTransfer {
    return Intl.message(
      'Bank Transfer',
      name: 'bankTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Click to select the bank account`
  String get clickToSelectBankAccount {
    return Intl.message(
      'Click to select the bank account',
      name: 'clickToSelectBankAccount',
      desc: '',
      args: [],
    );
  }

  /// `UPI Transfer`
  String get upiTransfer {
    return Intl.message(
      'UPI Transfer',
      name: 'upiTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Click to select Upi address`
  String get selectUpiAddress {
    return Intl.message(
      'Click to select Upi address',
      name: 'selectUpiAddress',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Change MPIN`
  String get changeMpin {
    return Intl.message(
      'Change MPIN',
      name: 'changeMpin',
      desc: '',
      args: [],
    );
  }

  /// `Old MPIN`
  String get oldMpin {
    return Intl.message(
      'Old MPIN',
      name: 'oldMpin',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal History`
  String get withdrawalHistory {
    return Intl.message(
      'Withdrawal History',
      name: 'withdrawalHistory',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.`
  String get privacy1 {
    return Intl.message(
      'Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.',
      name: 'privacy1',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.`
  String get privacy2 {
    return Intl.message(
      'Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.',
      name: 'privacy2',
      desc: '',
      args: [],
    );
  }

  /// `Team Support`
  String get teamSupport {
    return Intl.message(
      'Team Support',
      name: 'teamSupport',
      desc: '',
      args: [],
    );
  }

  /// `Team Contact`
  String get teamContact {
    return Intl.message(
      'Team Contact',
      name: 'teamContact',
      desc: '',
      args: [],
    );
  }

  /// `Love to hear from you, let’s connect`
  String get loveToHearFrom {
    return Intl.message(
      'Love to hear from you, let’s connect',
      name: 'loveToHearFrom',
      desc: '',
      args: [],
    );
  }

  /// `Your Mail`
  String get yourMail {
    return Intl.message(
      'Your Mail',
      name: 'yourMail',
      desc: '',
      args: [],
    );
  }

  /// `Enter mail`
  String get enterMail {
    return Intl.message(
      'Enter mail',
      name: 'enterMail',
      desc: '',
      args: [],
    );
  }

  /// `Your Message`
  String get yourMessage {
    return Intl.message(
      'Your Message',
      name: 'yourMessage',
      desc: '',
      args: [],
    );
  }

  /// `Enter text..`
  String get enterText {
    return Intl.message(
      'Enter text..',
      name: 'enterText',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out`
  String get logout1 {
    return Intl.message(
      'Are you sure you want to log out',
      name: 'logout1',
      desc: '',
      args: [],
    );
  }

  /// `from this application?`
  String get logout2 {
    return Intl.message(
      'from this application?',
      name: 'logout2',
      desc: '',
      args: [],
    );
  }

  /// `'Something Wrong 😒'`
  String get someThingWentWrong {
    return Intl.message(
      '\'Something Wrong 😒\'',
      name: 'someThingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet consectetur.`
  String get loremIpsum {
    return Intl.message(
      'Lorem ipsum dolor sit amet consectetur.',
      name: 'loremIpsum',
      desc: '',
      args: [],
    );
  }

  /// `Successfully 🥳`
  String get successfully {
    return Intl.message(
      'Successfully 🥳',
      name: 'successfully',
      desc: '',
      args: [],
    );
  }

  /// `Lorem ipsum dolor sit amet consectetur.`
  String get Loremdolor {
    return Intl.message(
      'Lorem ipsum dolor sit amet consectetur.',
      name: 'Loremdolor',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Clear all notifications`
  String get clearAllNotification {
    return Intl.message(
      'Clear all notifications',
      name: 'clearAllNotification',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `TDS Summary`
  String get tdsSummary {
    return Intl.message(
      'TDS Summary',
      name: 'tdsSummary',
      desc: '',
      args: [],
    );
  }

  /// `Total Earned`
  String get totalEarned {
    return Intl.message(
      'Total Earned',
      name: 'totalEarned',
      desc: '',
      args: [],
    );
  }

  /// `Deducted`
  String get deducted {
    return Intl.message(
      'Deducted',
      name: 'deducted',
      desc: '',
      args: [],
    );
  }

  /// `Transferred`
  String get transferred {
    return Intl.message(
      'Transferred',
      name: 'transferred',
      desc: '',
      args: [],
    );
  }

  /// `No Data`
  String get noData {
    return Intl.message(
      'No Data',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Manual Entry`
  String get manualEntry {
    return Intl.message(
      'Manual Entry',
      name: 'manualEntry',
      desc: '',
      args: [],
    );
  }

  /// `Entry 12 character coupon code`
  String get enter12 {
    return Intl.message(
      'Entry 12 character coupon code',
      name: 'enter12',
      desc: '',
      args: [],
    );
  }

  /// `Claim Coupon`
  String get claimCoupon {
    return Intl.message(
      'Claim Coupon',
      name: 'claimCoupon',
      desc: '',
      args: [],
    );
  }

  /// `QR Code`
  String get qrCode {
    return Intl.message(
      'QR Code',
      name: 'qrCode',
      desc: '',
      args: [],
    );
  }

  /// `Payment method`
  String get paymentMethod {
    return Intl.message(
      'Payment method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Upload Method`
  String get uploadMethod {
    return Intl.message(
      'Upload Method',
      name: 'uploadMethod',
      desc: '',
      args: [],
    );
  }

  /// `Connection Lose!`
  String get connectionLose {
    return Intl.message(
      'Connection Lose!',
      name: 'connectionLose',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet`
  String get conn1 {
    return Intl.message(
      'Please check your internet',
      name: 'conn1',
      desc: '',
      args: [],
    );
  }

  /// `connection and try again`
  String get conn2 {
    return Intl.message(
      'connection and try again',
      name: 'conn2',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Server error!`
  String get serverError {
    return Intl.message(
      'Server error!',
      name: 'serverError',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet`
  String get server1 {
    return Intl.message(
      'Please check your internet',
      name: 'server1',
      desc: '',
      args: [],
    );
  }

  /// `connection and try again`
  String get server2 {
    return Intl.message(
      'connection and try again',
      name: 'server2',
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
