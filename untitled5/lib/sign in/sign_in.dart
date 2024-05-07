import 'package:flutter/material.dart';
import 'package:untitled5/sign%20in/Sign_in_facebook.dart';

import 'sign_in_google.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final Shader linearGradient = const LinearGradient(
    colors: [Color(0xff92A3FD), Color(0xff9DCEFF)],
  ).createShader(const Rect.fromLTWH(150, 150,150,150));
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Image.asset("images/img_2.png"),
           const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 61,
                  ),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                       // foreground: Paint()..shader = linearGradient,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                SignInFacebook(),
                SizedBox(
                  height: 44,
                ),
                SignInGoogle(),
              ]),
        ],
      ),
    );
  }
}
