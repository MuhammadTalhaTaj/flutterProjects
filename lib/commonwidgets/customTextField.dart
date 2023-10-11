
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
  var keyBoardtype;
  bool spacer;
  ValueChanged<String>? callback;
  String? Function(String?)?  validation;
  int maxlines;
  var maxLength;

  CustomTextField({
    Key? key,
    this.labelText = "",
    this.editedText = "",
    this.textAlignCenter = false,
    this.editedTextSize = 20,
    this.keyBoardtype = TextInputType.text,
    this.callback,
    this.maxlines = 1,
    this.spacer = false,
    this.maxLength = null,
     this.validation,
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
      constraints: BoxConstraints(minHeight: 50.h),
      child: Container(
        color: context.colorScheme.onPrimaryContainer,
        width: double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextFormField(

           validator:widget.validation,

            //maxLength: widget.spacer == true ? widget.maxLength : null,

            inputFormatters: widget.spacer == true
                ? [
                    LengthLimitingTextInputFormatter(widget.maxLength ?? null),
                    FilteringTextInputFormatter.digitsOnly,
                    CustomInputFormatter()
                  ]
                :widget.keyBoardtype==TextInputType.number? [
                    LengthLimitingTextInputFormatter(
                      widget.maxLength,
                    ),
                   FilteringTextInputFormatter.digitsOnly

                  ]:null,
            maxLines: widget.maxlines,
            keyboardType: widget.keyBoardtype,
            controller: _controller,
            style: TextStyle(
              fontSize: widget.editedTextSize.sp,
              color: Colors.white,
            ),
            textAlign:
                widget.textAlignCenter ? TextAlign.center : TextAlign.start,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
              // constraints: BoxConstraints(minHeight: 68.h),
              hintText: widget.labelText,
              hintStyle: TextStyle(color: Colors.white70, fontSize: 20.sp),
              // fillColor: Colors.white24,
              enabledBorder:const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),

                borderRadius: BorderRadius.all(
                  Radius.circular(0.0),
                ),
              ),



              // border: const OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.red),
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(0.0),
              //   ),
              // ),
            ),
            onChanged: (newValue) {
              widget.callback!(newValue);

              setState(() {
                widget.editedText = newValue;
              });
            },
          ),
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

class CustomInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    var buffer = StringBuffer();
    for (int i = 0; i < text.length; i++) {
      buffer.write(text[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 4 == 0 && nonZeroIndex != text.length) {
        buffer.write(' ');
      }
    }

    var string = buffer.toString();
    return newValue.copyWith(
        text: string,
        selection: new TextSelection.collapsed(offset: string.length));
  }
}
