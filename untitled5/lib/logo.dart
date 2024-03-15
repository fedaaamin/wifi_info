
import 'package:flutter/material.dart';

import 'OnBoarding/onboarding.dart';
import 'sign_in.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final response = await Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacement( context,
          MaterialPageRoute(builder: (_) =>  PageSliderDemo()));
    });

  }
    @override
    Widget build(BuildContext context) {
      return const Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 330,
                image: AssetImage("images/LOGO.png"),
              ),

            ],
          ),
        ),
      );
    }
  }

