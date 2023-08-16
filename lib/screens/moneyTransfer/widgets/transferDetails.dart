import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../../commonwidgets/appsize.dart';
import '../../../constants/textStyles.dart';

class TransferDetails extends StatefulWidget {
  String upperText;
  String lowerText;

  String imagePath;

  TransferDetails({required this.imagePath,required this.upperText,required this.lowerText});

  @override
  State<TransferDetails> createState() => _TransferDetailsState();
}

class _TransferDetailsState extends State<TransferDetails> {
  bool _checkbox1 = false;
  @override
  Widget build(BuildContext context) {
    return       Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(13),
          height: 88,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 2,
                  color: context.colorScheme.primaryContainer)),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 51,
                color: context.colorScheme.primaryContainer,
                child: Center(
                  child: Image.asset(widget.imagePath),
                ),
              ),
              AppSize(
                width: 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    widget.upperText,
                    style: bodyTextStyle(context),
                  ),
                  AppSize(
                    height: 5,
                  ),
                  Text(
                    widget.lowerText,
                    style: subBodyTextStyle(),
                  )
                ],
              )
            ],
          ),
        ),
        Positioned(
          bottom: 70,
          right: -5,
          child: Container(
            height: 23,
            width: 23,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _checkbox1 = !_checkbox1;
                  print('jslfjs ');
                });
              },
              child: Center(
                  child: Image.asset(_checkbox1 == true
                      ? 'lib/icons/checkboxSelectedIcon.png'
                      : 'lib/icons/checkboxIcon.png')),
            ),
          ),
        )
      ],
    );
  }
}
