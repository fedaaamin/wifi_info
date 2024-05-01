import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/buttons/next_button.dart';

import 'goal.dart';

int? userHeight;

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  int selectedHeight = 145;
  final String url =
      "http://11163230:60-dayfreetrial@fitnessapi-001-site1.itempurl.com/Api/Trainees";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "WHAT’S YOUR HEIGHT?",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "THIS HELP US CREATE YOUR PERSONALIZED PLAN",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "TO KNOW YOUR GENDER",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
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
                            selectedHeight = index + 120;
                            userHeight = selectedHeight;
                          });
                        },
                        scrollController: FixedExtentScrollController(
                            initialItem: selectedHeight),
                        diameterRatio: 1,
                        useMagnifier: true,
                        magnification: 1.3,
                        children: List.generate(200, (index) {
                          return Text(
                            '${index + 120} cm',
                            style: const TextStyle(fontSize: 30),
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
            child: NextButton(page: Goals()),
          )),
    );
  }
}
