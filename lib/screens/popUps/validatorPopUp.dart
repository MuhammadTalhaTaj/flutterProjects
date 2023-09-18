import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_spacer_constants.dart';
import '../../generated/l10n.dart';

class ValidatorPopup extends StatelessWidget {
  static const routeName='/somethingWentWrong';
  const ValidatorPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
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

    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.

    // showDialog(context: context, builder: (context) => ValidatorPopup(),);
  }
}
