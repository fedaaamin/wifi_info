import 'package:flutter/material.dart';
import 'package:untitled5/OnBoarding/onboarding2.dart';
import 'package:untitled5/OnBoarding/onboarding1.dart';
import 'package:untitled5/OnBoarding/onboarding3.dart';

class PageSliderDemo extends StatelessWidget {
  static const  List<Widget> pages = [
     landing(),
     landing2(),
    landing3()
  ];

  const PageSliderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: PageView(
        children: pages,
      ),
    );
  }
}