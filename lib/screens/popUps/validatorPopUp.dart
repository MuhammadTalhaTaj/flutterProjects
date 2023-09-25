
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/icons_variables/icons_variables.dart';
import 'package:flutter/material.dart';
import '../../constants/app_spacer_constants.dart';


class ValidatorPopup extends StatelessWidget {
  static const routeName='/somethingWentWrong';
  const ValidatorPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      closeIconColor: Colors.white,
      backgroundColor: const Color(0xffa30010),
      content:  Row(children: [

        Image.asset(IconsVariables.cancelIcon),
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
