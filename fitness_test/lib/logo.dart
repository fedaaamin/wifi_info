import 'package:fitness_test/sign_in.dart';
import 'package:flutter/material.dart';

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
      final response = await Future.delayed(const Duration(seconds: 3));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const SignIn()));
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
                image: AssetImage("images/logo.png"),
              ),

              Text(
                "Ready for challenges, prepared for success",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

