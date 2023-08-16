
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
    return SizedBox(
      width: double.infinity,
      height: 58,
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
    );
  }
}
