import 'package:flutter/material.dart';

import 'OnBoarding/onboarding.dart';

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
      await Future.delayed(const Duration(seconds: 2));
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const PageSliderDemo()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
         end: Alignment.centerRight,
           begin: Alignment.topRight ,
            colors: [

             Color(0xff92A3FD),
             Color(0xff9DCEFF),


            ]
        )
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                width: 330,
                image: AssetImage("images/Untitled-1.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
