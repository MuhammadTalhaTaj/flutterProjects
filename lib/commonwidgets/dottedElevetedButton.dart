import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../constants/textStyles.dart';
import 'appsize.dart';

class DottedElevatedButton extends StatelessWidget {
  const DottedElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DottedBorder(
      dashPattern: [8, 4],
      color: Colors.white,
      strokeWidth: 0.5,
      child: Container(
        color: context.colorScheme.onPrimaryContainer,
        height: 58,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
            context.colorScheme.onPrimaryContainer,
          ),
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              AppSize(
                width: 5,
              ),
              Text(
                'Upload image',
                style: bodyTextStyle(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
