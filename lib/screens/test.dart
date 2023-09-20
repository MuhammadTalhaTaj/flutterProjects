import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: SvgPicture.network(
            'https://site-that-takes-a-while.com/image.svg',
            semanticsLabel: 'A shark?!',
            placeholderBuilder: (BuildContext context) => Container(
                padding: const EdgeInsets.all(30.0),
                child: const CircularProgressIndicator()),
          ),

        ),
      ),
    );
  }
}
