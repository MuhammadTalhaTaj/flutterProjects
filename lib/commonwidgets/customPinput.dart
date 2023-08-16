import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class CustomPinput extends StatefulWidget {
  final int length;
  final double width;
  final double boxHeight;
  final double boxWidth;

  const CustomPinput({Key? key, required this.length,  this.width=14,  this.boxHeight=39,  this.boxWidth=41}) : super(key: key);

  @override
  State<CustomPinput> createState() => _CustomPinputState();
}

class _CustomPinputState extends State<CustomPinput> {
  final pinController = TextEditingController();

  final focusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    var fillColor = context.colorScheme.onPrimaryContainer;
    const borderColor = Color(0xffCAC4CA);

    final defaultPinTheme = PinTheme(

      width: widget.boxWidth,
      height: widget.boxHeight,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimaryContainer,

        borderRadius: BorderRadius.circular(0),
        border: Border.all(color: borderColor),
      ),
    );
    return  Pinput(

      length: widget.length,
      controller: pinController,
      focusNode: focusNode,
      androidSmsAutofillMethod:
      AndroidSmsAutofillMethod.smsUserConsentApi,
      listenForMultipleSmsOnAndroid: true,
      defaultPinTheme: defaultPinTheme,
      separatorBuilder: (index) =>
       SizedBox(width: widget.width),
      validator: (value) {
        return value == '2222'
            ? null
            : 'Pin is incorrect';
      },
      // onClipboardFound: (value) {
      //   debugPrint('onClipboardFound: $value');
      //   pinController.setText(value);
      // },
      hapticFeedbackType:
      HapticFeedbackType.lightImpact,
      onCompleted: (pin) {
        debugPrint('onCompleted: $pin');
      },
      onChanged: (value) {
        debugPrint('onChanged: $value');
      },
      cursor: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(


            margin: const EdgeInsets.only(bottom: 9),
            width: 22,
            height: 1,
            color: focusedBorderColor,
          ),
        ],
      ),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration:
        defaultPinTheme.decoration!.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: focusedBorderColor),
        ),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration:
        defaultPinTheme.decoration!.copyWith(
          color: fillColor,
          borderRadius: BorderRadius.circular(19),
          border: Border.all(color: focusedBorderColor),
        ),
      ),
      errorPinTheme: defaultPinTheme.copyBorderWith(
        border: Border.all(color: Colors.redAccent),
      ),
    );
  }
}
