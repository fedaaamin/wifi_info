import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/User_information/disease/Disease.dart';
import 'package:untitled5/buttons/next_button.dart';

import 'goal.dart';

String? userLevel;

class Levels extends StatefulWidget {
  const Levels({super.key});

  @override
  State<Levels> createState() => _GoalsState();
}

class _GoalsState extends State<Levels> {
  int index = 0;
  List levels = [
    'Rookie',
    'Beginner',
    'Intermediate',
    'Advance',
    'True Beast',
  ];
  final Shader linearGradient = LinearGradient(
    colors: <Color>[const Color(0xff92A3FD),

      Color(0xff9DCEFF),],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Your regular physical "
              "activity level?",
              style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "THIS HELPS US CREATE YOUR PERSONALIZED PLAN",
              style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(

              width: 400,
              height: 300,
              child: CupertinoPicker(
                  scrollController:
                      FixedExtentScrollController(initialItem: index),
                  diameterRatio: 1,
                  useMagnifier: true,
                  magnification: 1.3,
                  itemExtent: 50,
                  onSelectedItemChanged: (int i) async {
                    setState(() {
                      index = i;
                      userLevel = levels[i];
                    });
                  },
                  children: <Widget>[
                    Text(
                      'low',
                      style: TextStyle(
                          foreground:  Paint()..shader = linearGradient,
                          fontSize: 30),
                    ),
                    Text(
                      'medium',
                      style: TextStyle(
                          foreground:  Paint()..shader = linearGradient,
                          fontSize: 30),
                    ),
                    Text('high',
                        style: TextStyle(
                            foreground:  Paint()..shader = linearGradient,
                            fontSize: 30)),
                  ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 30),
        child: Row(
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => const Goals()));
              },
              icon: const Icon(Icons.arrow_back),
            ),
            const SizedBox(
              width: 180,
            ),
            NextButton(page: Disease())
          ],
        ),
      ),
    );
  }
}
