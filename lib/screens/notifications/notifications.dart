import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/commonwidgets/nameAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class Notifications extends StatelessWidget {
  static const routeName='/notifications';
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NameAppbar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.centerLeft,
          colors: [

            context.colorScheme.background,
            context.colorScheme.onBackground
          ],
        )),
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(right: 13, left: 13, bottom: 13),
        child: Column(
          children: [
            Container(
              color: context.colorScheme.primaryContainer,
              padding: EdgeInsets.all(8),
              height: 40,
              //width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).clearAllNotification,
                    style: bodyTextStyle(context),
                  ),
                  AppSize(
                    height: 25,
                    width: 63,
                    child: CustomElivitedButton(
                      onPress: () {},
                      text: S.of(context).clear,
                      fontSize: 12,
                      backgroundColor: context.colorScheme.onPrimaryContainer,
                      textColor: context.colorScheme.primary,
                    ),
                  )
                ],
              ),
            ),
            AppSize(height: 20,),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    height: 225,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff3e2530),width: 1.5),
                    ),

                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          color:context.colorScheme.primaryContainer,
                          padding: EdgeInsets.all(11),
                          height: 50,
                          child:Text('15 june 2022',style: bodyTextStyle(context).copyWith(fontSize: 20),),

                        ),
                    Container(

                      height: 80,
                      width: double.infinity,
                      padding: EdgeInsets.all(10),


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 69,
                                height: 51,
                                color: context.colorScheme.primaryContainer,
                                child: Image.asset(ImageVariables.notification1Image,fit: BoxFit.fill,),
                              ),

                              AppSize(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Know your mechanic',
                                    style: bodyTextStyle(context),
                                  ),
                                  AppSize(
                                    height: 5,
                                  ),
                                  Text(
                                    '25 April, 2023',
                                    style: subBodyTextStyle(),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                         Divider(indent: 15, color: context.colorScheme.primaryContainer,height: 2,thickness: 1.5,endIndent: 15,),
                        Container(

                          height: 80,
                          width: double.infinity,
                          padding: EdgeInsets.all(10),


                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 69,
                                    height: 51,
                                    color: context.colorScheme.primaryContainer,
                                    child: Image.asset(ImageVariables.notification1Image,fit: BoxFit.fill,),
                                  ),

                                  AppSize(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Know your mechanic',
                                        style: bodyTextStyle(context),
                                      ),
                                      AppSize(
                                        height: 5,
                                      ),
                                      Text(
                                        '25 April, 2023',
                                        style: subBodyTextStyle(),
                                      ),

                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  );
                },
                itemCount: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
