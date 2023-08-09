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
              margin: EdgeInsets.only(right: 10),
              height: 50,
              width: constraints.maxWidth * 0.9,
              child: Image.asset(
                'assets/images/pic.jpg',
                fit: BoxFit.contain,
              ));
        },
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      );
    },);

  }
}
