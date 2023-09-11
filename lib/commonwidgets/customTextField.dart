import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  String editedText;
  String labelText;
  bool textAlignCenter;
  double editedTextSize;

  CustomTextField({
    Key? key,
    this.labelText = "",
    this.editedText = "",
    this.textAlignCenter = false,
    this.editedTextSize = 20,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.editedText;
  }

  @override
  Widget build(BuildContext context) {
    // _controller.text = widget.editedText;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 50
      ),
      child: Container(
              height: 58.h,

        color: context.colorScheme.onPrimaryContainer,
        width: double.infinity,
        child: TextField(
          controller: _controller,
          style: TextStyle(
            fontSize: widget.editedTextSize.sp,
            color: Colors.white,
          ),
          textAlign: widget.textAlignCenter ? TextAlign.center : TextAlign.start,
          decoration: InputDecoration(
            hintText: widget.labelText,
            hintStyle:  TextStyle(color: Colors.white70, fontSize: 18.sp),
            fillColor: Colors.white24,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white70),
              borderRadius: BorderRadius.all(
                Radius.circular(0.0),
              ),
            ),
          ),
          onChanged: (newValue) {
            setState(() {
              widget.editedText = newValue;
            });
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
