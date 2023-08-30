import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class NameAppbar extends StatelessWidget implements PreferredSizeWidget {
  const NameAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          height: 100,
          padding: const EdgeInsets.all(13),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).heyJohn,
                    style: headingTextStyle(context)
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    S.of(context).welcomeToTheLoyaltyApp,
                    style: bodyTextStyle(context),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xC9270F26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 02,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                      10), // Adjust the value for roundness
                ),
                width: 100,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     SizedBox(height: 23,width: 23, child: Image.asset('lib/icons/star.png',fit: BoxFit.fill,)),
                       Text(
                        '1562',
                        style: bodyTextStyle(context).copyWith(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
