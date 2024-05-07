import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/buttons/next_button.dart';

import 'activity.dart';

class Goals extends StatefulWidget {
  const Goals({super.key});

  @override
  State<Goals> createState() => _GoalsState();
}

String? userPurpose;

class _GoalsState extends State<Goals> {
  int index = 0;
  List purpose = ["Muscle Dehydration", "Body Building", "weight stability"];
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0xff92A3FD),

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
                "WHAT’S YOUR GOALS?",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "THIS HELPS US CREATE YOUR PERSONALIZED PLAN",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              const SizedBox(
                height:39,
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
                    itemExtent: 40,
                    onSelectedItemChanged: (int i) async {
                      setState(() {
                        index = i;
                        userPurpose = purpose[index];
                      });
                    },
                    children: <Widget>[
                      Text(
                        "Muscle Dehydration",
                        style: TextStyle(
                            foreground:  Paint()..shader = linearGradient,
                            // color: index == 0 ? Colors.white : Colors.grey,
                            fontSize: 27),
                      ),
                      Text(
                        "Body Building",
                        style: TextStyle(
                            foreground:  Paint()..shader = linearGradient,
                            fontSize: 30),
                      ),
                      Text("weight stability",
                          style: TextStyle(
                              foreground:  Paint()..shader = linearGradient,
                              fontSize: 30)),
                    ]),
              )
            ],
          ),
        ),
        floatingActionButton: const Padding(
          padding: EdgeInsets.only(right: 10, bottom: 30),
          child: NextButton(page: Levels()),
        ));
  }
}
