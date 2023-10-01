import 'package:demo_flutter/commonwidgets/dottedElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/paymentMethod/paymentMethodForm.dart';
import 'package:demo_flutter/screens/paymentMethod/widgets/paymentMethodList.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_padding.dart';
import '../../constants/app_spacer_constants.dart';
import '../../generated/l10n.dart';

class PaymentMethod extends StatefulWidget {
  static const routeName = '/paymentMethod';

  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  List items = [
    {
      'name': 'Bank Account',
      'date': 'Prince Ramoliya',
      'code': '5464565446@upi',
      'imagePath': 'lib/icons/bankTransferIcon.png',
      'rightNumber': '+58'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: SimpleAppbar(name: S.of(context).paymentMethod),
        body: Container(
            padding: padding15,
            width: double.infinity,
            decoration: BoxDecoration(
              color: context.colorScheme.background,
              image: DecorationImage(
                image: Image.asset(ImageVariables.backgroundImage).image,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                SizedBox(
                  // As we have maximum two methods
                  //  height:items.isNotEmpty?items.length==1?110.h:245.h:0.h,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return PaymentMethodListContainer(
                          imagePath: items[index]['imagePath'],
                          name: items[index]['name'],
                          date: items[index]['date'],
                          code: items[index]['code'],
                          rightNumber: items[index]['rightNumber'],
                          onPress: () {
                            setState(() {
                              items.removeAt(index);
                            });
                          },
                        );
                      },
                      itemCount: items.length,
                    ),
                  ),
                ),
                AppSpacer.p20(),
                DottedElevatedButton(
                  text: S.of(context).uploadMethod,
                  voidCallBack: () {
                    print('object');
                    showCustomBottomSheet(context,context.colorScheme.primaryContainer);


                  },
                ),
              ],
            )),
      ),
    );
  }
}
