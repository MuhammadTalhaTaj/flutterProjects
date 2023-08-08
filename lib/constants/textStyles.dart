import 'package:flutter/material.dart';

TextStyle headingTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.headlineLarge!.copyWith(
    color: Colors.white,fontSize: 30,
    fontWeight: FontWeight.bold
  );
}


TextStyle bodyTextStyle(context) {
  return TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w400
  );
}

TextStyle subBodyTextStyle() {
  return TextStyle(color: Color(0xFFADB5BD));
}

Color iconColor(context) {
  return Theme.of(context).colorScheme.secondary;
}
