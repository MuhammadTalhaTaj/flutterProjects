import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/dottedElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/history/widgets/historyListContainer.dart';
import 'package:demo_flutter/screens/paymentMethod/widgets/paymentMethodList.dart';
import 'package:demo_flutter/screens/withdrawalHistory/widgets/historyListContainer.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';



class PaymentMethod extends StatelessWidget {
  PaymentMethod({Key? key}) : super(key: key);

  List items = [
    {
      'name': 'Bank Account',
      'date': 'Prince Ramoliya',
      'code': '5464565446@upi',
      'imagePath': 'lib/icons/bankTransferIcon.png',
      'rightNumber':'+58'
    },



  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:SimpleAppbar(name: 'Payment method'),
        body: Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          child: Column(
            children: [
              AppSize(
                // As we have maximum two methods
                height: items.length==1?110:230,
                width: double.infinity,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return PaymentMethodListContainer(
                        imagePath: items[index]['imagePath'],
                        name: items[index]['name'],
                        date: items[index]['date'],
                        code: items[index]['code'],
                      rightNumber: items[index]['rightNumber'],
                    );
                  },
                  itemCount: items.length,
                ),
              ),
              AppSize(height: 20,),
              DottedElevatedButton(),

            ],
          )
          
          
        ),
      ),
    );
  }
}
