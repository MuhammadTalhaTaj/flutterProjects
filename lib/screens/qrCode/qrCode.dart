import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class QrCode extends StatelessWidget {
  static const routeName='/qrCode';
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: SimpleAppbar(name: S.of(context).qrCode),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              colors: [
                context.colorScheme.background,
                context.colorScheme.onBackground
              ],
            )),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageVariables.qrCodeImage)
          ],
        ),
      ),
    ));
  }
}
