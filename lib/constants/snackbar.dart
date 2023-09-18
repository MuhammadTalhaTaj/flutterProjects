
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:flutter/material.dart';

import 'app_spacer_constants.dart';

final customSnackBar = SnackBar(

 // duration: Duration(seconds: 1),
  closeIconColor: Colors.white,
  backgroundColor: Color(0xffa30010),
  content:  Row(children: [

    Image.asset('lib/icons/cancelIcon.png'),
    AppSpacer.p8(),
    Flexible(child: Text('Kindly Enter Correct Input',style: bodyTextStyle(),)),
  ],),
  showCloseIcon: true,

  //action: SnackBarAction(label: 'Ok', onPressed: (){})
);