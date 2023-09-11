import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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



class ColumnDivider extends StatelessWidget {
  final double? space;
  final Color? color;
  const ColumnDivider({Key? key, this.space, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(height: space ?? 10.h, color: color);
  }
}

class RowDivider extends StatelessWidget {
  final double? space;
  final Color? color;
  const RowDivider({Key? key, this.space, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(width: space ?? 10.w, color: color);
  }
}
