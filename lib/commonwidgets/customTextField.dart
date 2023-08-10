import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  const CustomTextField({
    super.key, required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

        color: context.colorScheme.onPrimaryContainer,
        width: double.infinity,
        child: TextField(
          style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                labelText: labelText,
                labelStyle: TextStyle(color: Colors.white70,fontSize: 18),
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                  borderRadius: BorderRadius.all(

                    Radius.circular(0.0),



                  ),
                ))));
  }
}