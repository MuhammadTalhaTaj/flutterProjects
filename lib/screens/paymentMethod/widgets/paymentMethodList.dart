import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../../commonwidgets/appsize.dart';
import '../../../constants/textStyles.dart';
import '../paymentMethod.dart';

class PaymentMethodListContainer extends StatelessWidget {
  final String imagePath;
  final String name;
  final String date;
  final String code;
  final String rightNumber;

  const PaymentMethodListContainer({
    super.key,
    required this.imagePath, required this.name, required this.date, required this.code, required this.rightNumber,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(13),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(
              width: 2, color: context.colorScheme.primaryContainer)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(

            children: [
              Container(
                width: 48,
                height: 51,
                color: context.colorScheme.primaryContainer,
                child: Center(

                  child: Image.asset(imagePath),
                ),
              ),

              AppSize(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: bodyTextStyle(context),
                  ),
                  AppSize(
                    height: 5,
                  ),
                  Text(
                   date,
                    style: subBodyTextStyle(),
                  ),
                  AppSize(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    color:  context.colorScheme.primaryContainer,
                    child: Text(
                      code,
                      style: subBodyTextStyle().copyWith(fontSize: 12),
                    ),
                  )
                ],
              )
            ],
          ),
          Image.asset('lib/icons/deleteIcon2.png'),

        ],
      ),
    );
  }
}