import 'package:flutter/material.dart';

class AppSize extends StatelessWidget {
  double height;
  double width;
  Widget? child;

  AppSize({this.height=0, this.width=0,this.child});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: height,
      width: width,
      child: child!=null? child:null,
    );
  }
}
