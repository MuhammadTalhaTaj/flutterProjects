
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

class CustomElivitedButton extends StatelessWidget {
   String text;
  final VoidCallback onPress;
  String imageData;
  Color backgroundColor;
  Color textColor;
  double fontSize;

  CustomElivitedButton({

    super.key,

     this.text='',
    required this.onPress,
    this.imageData='',
    this.backgroundColor=const Color(0xFFFFFFFF),
    this.textColor=const Color(0xff000000),
    this.fontSize=20,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minHeight: 50
      ),
      child: SizedBox(
        width: double.infinity,
        height: context.height*0.065,
        child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
          child:imageData==''? Text(
            text,
            style:  TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold,color: textColor),
          ):Image.asset(imageData),
        ),
      ),
    );
  }
}
