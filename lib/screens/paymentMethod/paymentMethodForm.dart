import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customTextField.dart';
import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/app_spacer_constants.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showCustomBottomSheet(context, Color color) {
  bool value = false;
  showModalBottomSheet<void>(
    backgroundColor: color,
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: padding13,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustomTextField(
                labelText: 'Bank Name',
              ),
              AppSpacer.p15(),
              CustomTextField(
                labelText: 'Account Holder Name',
              ),
              AppSpacer.p15(),
              CustomTextField(
                labelText: 'Account number',
              ),
              AppSpacer.p15(),
              CustomTextField(
                labelText: 'Confirm Account number',
              ),
              AppSpacer.p15(),
              CustomTextField(
                labelText: 'IFSC code',
              ),
              AppSpacer.p15(),
              CustomTextField(
                labelText: 'Confirm IFSC code',
              ),
              AppSpacer.p15(),
              Row(
                children: [
                  Checkbox(
                    value: value,
                    onChanged: (value) {
                      value = true;
                    },
                    fillColor: const MaterialStatePropertyAll(
                      Colors.white,
                    ),
                  ),
                  AppSpacer.p5(),
                  Flexible(child: Text('I agree to share Bank/UPI details and the information given by me is used for only credit purpose.T&C Apply',style: bodyTextStyle(),)),
                ],
              ),
              AppSpacer.p15(),
              CustomElivitedButton(onPress: (){},text: 'Save',)

            ],
          ),
        ),
      );
    },
  );
}
