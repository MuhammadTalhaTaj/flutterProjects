import 'package:demo_flutter/imageVairableFiles/ImageVariableFiles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/screen_util_extension.dart';
import 'package:flutter/material.dart';

class PicHorizontalContainer extends StatelessWidget {
  const PicHorizontalContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFEFEFE),
              ),
              margin: const EdgeInsets.only(right: 10),

              width:context.isPatriot? constraints.maxWidth * 0.94:constraints.maxWidth*0.7,
              child: Image.asset(
                ImageVariables.homeScreenImage,

                fit: BoxFit.fill,
              ));
        },
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      );
    },);

  }
}
