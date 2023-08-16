import 'package:demo_flutter/commonwidgets/simpleAppbar.dart';
import 'package:demo_flutter/constants/textStyles.dart';
import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SimpleAppbar(name: 'Privacy Policy'),
        body: Container(
          padding: EdgeInsets.all(13),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            // begin: Alignment.centerLeft,
            colors: [
              context.colorScheme.background,
              context.colorScheme.onBackground
            ],
          )),
          child: Text(
            'Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.\n\n'
            'Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.Lorem ipsum dolor sit amet consectetur. Vitae nunc dictumst semper enim bibendum in sed ipsum. Viverra egestas risus duis mi lectus morbi at sit sed. Arcu id eget dolor praesent vitae diam. Tempor semper nisl egestas neque bibendum commodo ultricies pellentesque aliquet. Tincidunt semper.',
            style: subBodyTextStyle().copyWith(
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
