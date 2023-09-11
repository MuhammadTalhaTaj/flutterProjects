import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElivitedButton extends StatelessWidget {
  String text;
  final VoidCallback onPress;
  String imageData;
  Color backgroundColor;
  Color textColor;
  double fontSize;

  CustomElivitedButton({
    super.key,
    this.text = '',
    required this.onPress,
    this.imageData = '',
    // Todo : Don't use static colors anywhere
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xff000000),
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58.h,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:
                const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
        child: imageData == ''
            ? Text(
                text,
                //todo : change text style from style file.
                style: TextStyle(
                    fontSize: fontSize.sp,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              )
            : Image.asset(imageData),
      ),
    );
  }
}
