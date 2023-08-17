import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class ConnectionLost extends StatelessWidget {
  const ConnectionLost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          colors: [
            context.colorScheme.background,
            context.colorScheme.onBackground
          ],
        )),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageVariables.connectionLostImage),
            AppSize(height: 10,),
            Text('Connection Lose!',style: headingTextStyle(context),),
            AppSize(height: 10,),
            Text('Please check your internet\nconnection and try again',style: subBodyTextStyle(),textAlign: TextAlign.center,),
            AppSize(height: 10,),
            AppSize(width: 159,height: 47, child: CustomElivitedButton(onPress: (){},backgroundColor: context.colorScheme.onPrimaryContainer,text: 'Try Again',textColor: context.colorScheme.primary,))




          ],
        ),
      ),
    ));
  }
}
