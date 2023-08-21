import 'package:demo_flutter/utils/app_utils/extensions/color_extension.dart';
import 'package:flutter/material.dart';

class BottomComponent extends StatelessWidget {
  final String iconPath;
  final text;
  const BottomComponent({Key? key, required this.iconPath, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: Container(
        height: 100,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(29.0),
              child: Card(
                elevation: 10,
                color: context.colorScheme.surface,
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Image.asset(iconPath)),
              ),
            ),
            Text('$text',style: TextStyle(color: Colors.white70),)
          ],
        ),
      ),
    );
  }
}
