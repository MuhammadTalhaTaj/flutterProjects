import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/customTextField.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/screens/moneyTransfer/widgets/slider.dart';
import 'package:demo_flutter/screens/moneyTransfer/widgets/transferDetails.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class MoneyTransfer extends StatefulWidget {
  const MoneyTransfer({Key? key}) : super(key: key);

  @override
  State<MoneyTransfer> createState() => _MoneyTransferState();
}

class _MoneyTransferState extends State<MoneyTransfer> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppbar(name: 'Money Transfer',),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 88,
                    width: double.infinity,
                    child: Image.asset(
                      ImageVariables.moneyTransferImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  AppSize(
                    height: 20,
                  ),
                  Text(
                    'Select Amount',
                    style: bodyTextStyle(context),
                  ),
                  AppSize(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: AppSize(
                          height: 58,
                          width: 58,
                          child: CustomElivitedButton(
                            text: '-',
                            onPress: () {
                              setState(() {
                                _value -= 1;
                              });
                            },
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            textColor: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: AppSize(
                            width: 200,
                            height: 58,
                            child: CustomTextField(
                              editedText: '\$${_value.toStringAsFixed(0)}',
                              textAlignCenter: true,
                              editedTextSize: 23,
                            )),
                      ),
                      Flexible(
                        flex: 1,
                        child: AppSize(
                          height: 58,
                          width: 58,
                          child: CustomElivitedButton(
                            text: '+',
                            onPress: () {
                              setState(() {
                                _value += 1;
                              });
                            },
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                            textColor: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSize(
                    height: 25,
                  ),
                  CustomSlider(valueChanged: (v) {
                    print(v);
                    setState(() {
                      _value = v;
                    });
                  }),
                  AppSize(
                    height: 20,
                  ),
                  TransferDetails(
                    imagePath: 'lib/icons/bankTransferIcon.png',
                    upperText: 'Bank Transfer',
                    lowerText: 'Click to select the bank account',
                  ),
                  AppSize(
                    height: 20,
                  ),
                  TransferDetails(
                    imagePath: 'lib/icons/upiTransferIcon.png',
                    upperText: 'UPI Transfer',
                    lowerText: 'Click to select Upi address',
                  ),
                ],
              ),
              CustomElivitedButton(
                onPress: () {},
                text: 'Submit',
              )
            ],
          ),
        ),
      ),
    );
  }
}
