import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/buttons/next_button.dart';

import 'height.dart';

int? userWeight;

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  double selectedWeight = 50.0;
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
                "WHAT’S YOUR WEIGHT?",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "THIS HELP US CREATE YOUR PERSONALIZED PLAN",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "TO KNOW YOUR GENDER",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: 400,
                  height: 300,
                  child: CupertinoTheme(
                    data: const CupertinoThemeData(
                      brightness: Brightness.dark,
                    ),
                    child: CupertinoPicker(
                      itemExtent: 40,
                      onSelectedItemChanged: (index) async {
                        setState(() {
                          selectedWeight = 30.0 + index.toDouble();
                          userWeight = selectedWeight.toInt();
                        });
                      },
                      scrollController: FixedExtentScrollController(
                          initialItem: selectedWeight.toInt()),
                      diameterRatio: 1,
                      useMagnifier: true,
                      magnification: 1.3,
                      children: List.generate(150, (index) {
                        return Text(
                          '${30 + index} kg',
                          style:  TextStyle(
                              fontSize: 30,
                            foreground:  Paint()..shader = linearGradient,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 30),
          child: NextButton(page: Height()),
        ));
  }
}
