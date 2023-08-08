import 'package:flutter/material.dart';
class CustomElivitedButton extends StatelessWidget {
  final String text;
  final  VoidCallback onPress;
  const CustomElivitedButton({
    super.key, required this.text, required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,height: 58, child: ElevatedButton(onPressed: onPress, child: Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)),));
  }
}