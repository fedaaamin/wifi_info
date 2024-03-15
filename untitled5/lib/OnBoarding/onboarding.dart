import 'package:flutter/material.dart';
import 'package:untitled5/OnBoarding/inboarding2.dart';
import 'package:untitled5/OnBoarding/onboarding1.dart';
import 'package:untitled5/OnBoarding/onboarding3.dart';

class PageSliderDemo extends StatelessWidget {
  final List<Widget> pages = [
    landing(),
    landing2(),
    landing3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        children: pages,
      ),
    );
  }
}