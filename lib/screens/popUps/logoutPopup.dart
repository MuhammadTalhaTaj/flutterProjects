import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/commonwidgets/customElevetedButton.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class LogoutPopup extends StatelessWidget {
  static const routeName='/logoutPopup';
  const LogoutPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0),
      content: Container(
        padding: EdgeInsets.only(top: 13,left: 13,right: 13),
        height: 190,
        width: 324,
        color: context.colorScheme.onPrimaryContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                S.of(context).logOut,
                style: headingTextStyle(context).copyWith(fontSize: 24),
              ),
            ),

            Column(
              children: [
                Text(
                  '${S.of(context).logout1}\n${S.of(context).logout2}',
                  textAlign: TextAlign.center,
                  style: subBodyTextStyle(),
                ),
                Divider(thickness: 0.2,color: Color(0xFFADB5BD),),
                Row(
                  children: [
                    Expanded(
                        child: AppSize(
                      height: 50,
                      child: CustomElivitedButton(
                        onPress: () {},
                        text: S.of(context).yes,
                        backgroundColor: context.colorScheme.onPrimaryContainer,
                        textColor: Color(0xFFADB5BD),
                        fontSize: 18,
                      ),
                    )),
                    SizedBox(height: 40,width: 13, child: VerticalDivider(color:Color(0xFFADB5BD),thickness: 0.3,)),
                    Expanded(
                        child: AppSize(
                          height: 50,
                          child: CustomElivitedButton(
                            onPress: () {},
                            text: S.of(context).cancel,
                            backgroundColor: context.colorScheme.onPrimaryContainer,
                            textColor: Color(0xFFADB5BD),
                            fontSize: 18,

                          ),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
