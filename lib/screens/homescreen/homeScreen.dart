import 'package:demo_flutter/commonwidgets/appsize.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'components/bottomcomponents.dart';
import 'components/namecontainer.dart';
import 'components/picshorizontalcontainer.dart';
import 'components/slidercontainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          context.colorScheme.background,
          context.colorScheme.onBackground
        ])),
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: NameContainer()),
            AppSize(
              height: 10,
            ),
            AppSize(
              height: context.isPatriot ? 160 : 200,
              width: context.width * 1,
              child: PicHorizontalContainer(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 13),
              height: 320,
              width: context.width,
              child: GridView.count(
                childAspectRatio: context.isPatriot ? 1.3 : 3,
                primary: false,
                padding: const EdgeInsets.symmetric(vertical: 20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  SliderContainer(
                    number: 124,
                    IconData: Icons.security_update_good,
                    activeColor: Colors.green,
                    bottomText: S.of(context).availablePoints,
                  ),
                  SliderContainer(
                    number: 45,
                    IconData: Icons.upload_file_rounded,
                    activeColor: Colors.blueAccent,
                    bottomText: S.of(context).redeemedPoint,
                  ),
                  SliderContainer(
                    number: 96,
                    IconData: Icons.pages_rounded,
                    activeColor: Colors.deepOrangeAccent,
                    bottomText: S.of(context).inProcessPoint,
                  ),
                  SliderContainer(
                    number: 124,
                    IconData: Icons.percent_sharp,
                    activeColor: Colors.red,
                    bottomText: S.of(context).texDeducted,
                  ),
                ],
              ),
            ),
            AppSize(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).others,
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            AppSize(
              height: 13,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Row(
                children: [
                  BottomComponent(
                    iconData: Icons.grid_view,
                    text: S.of(context).entry,
                  ),
                  BottomComponent(
                    iconData: Icons.file_copy,
                    text: S.of(context).methods,
                  ),
                  BottomComponent(
                    iconData: Icons.lock_open_rounded,
                    text: S.of(context).mpin,
                  ),
                  BottomComponent(
                    iconData: Icons.person_pin_outlined,
                    text: S.of(context).help,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
