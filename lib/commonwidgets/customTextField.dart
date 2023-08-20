import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.editedTextSize=20,
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
    _controller.text = widget.editedText;

    return GestureDetector(
      onTap: (){
        print('helo');
      },
      child: Container(
        color: context.colorScheme.onPrimaryContainer,
        width: double.infinity,
        child: TextField(
          controller: _controller,
          style:  TextStyle(

            fontSize: widget.editedTextSize,
            color: Colors.white,
          ),
          textAlign: widget.textAlignCenter ? TextAlign.center : TextAlign.start,
          decoration: InputDecoration(

            labelText: widget.labelText,
            labelStyle: const TextStyle(color: Colors.white70, fontSize: 18),
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
