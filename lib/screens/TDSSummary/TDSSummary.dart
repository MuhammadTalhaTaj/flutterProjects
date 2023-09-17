import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/app_padding.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/screens/TDSSummary/widgets/pointsContainer.dart';
import 'package:demo_flutter/screens/TDSSummary/widgets/tdsListContainer.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';

class TDSSummary extends StatelessWidget {
  static const routeName='/tdsSummary';
   TDSSummary({Key? key}) : super(key: key);

  List items = [
    {
        'name': 'ADLJLJ4546K',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': 'lib/icons/histIcon.png',
      'rightNumber1':'56',
   'rightNumber2': '-23',
   'rightNumber3':'23'

},
    {
      'name': 'UPI Transfer',
      'date': 'May 2023, 11:30 PM',
      'code': 'category',
      'imagePath': 'lib/icons/histIcon.png',
      'rightNumber1':'56',
      'rightNumber2': '-23',
      'rightNumber3':'23'

    },


  ];

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
      appBar: SimpleAppbar(name: S.of(context).tdsSummary),
      body: Container(
        padding: padding13,
        decoration: BoxDecoration(
          color: context.colorScheme.background,
          image:  DecorationImage(

            image: Image.asset('assets/images/backgroundImage.png').image,
            fit: BoxFit.cover,
          ),),
        child: Column(
          children: [
          SizedBox(height: 80.h,),
            Expanded(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  PointsContainer(color: Color(0xff198754), upperText: '96', lowerText: S.of(context).totalEarned),
                  PointsContainer(color: Color(0xffdc3545), upperText: '99', lowerText: S.of(context).deducted),
                  PointsContainer(color: Color(0xff0d6efd), upperText: '56', lowerText: S.of(context).transferred),
                ],),

                Expanded(
                  child: MediaQuery.removePadding(context: context,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return TdsListContainer(
                          imagePath: items[index]['imagePath'],
                          name: items[index]['name'],
                          date: items[index]['date'],
                          code: items[index]['code'],
                          rightNumber1: items[index]['rightNumber1'],
                          rightNumber2: items[index]['rightNumber2'],
                          rightNumber3: items[index]['rightNumber3'],
                        );
                      },
                      itemCount: items.length,
                    ),
                  ),
                )
              ],),
            ),
          ],
        ),
      ),
    ));
  }
}


