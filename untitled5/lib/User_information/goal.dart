
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'activity.dart';

class Goals extends StatefulWidget {
  const Goals({super.key});

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  int index = 0;
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
                "WHAT’S YOUR GOALS?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "THIS HELPS US CREATE YOUR PERSONALIZED PLAN",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              const SizedBox(
                height: 40,
              ),

              Container(
                color: Colors.black,
                width: 400,
                height: 300,
                child: CupertinoPicker(
                  scrollController: FixedExtentScrollController(initialItem: index),
                    diameterRatio: 1,
                    useMagnifier: true,
                    magnification: 1.3,


                    itemExtent: 40,
                    onSelectedItemChanged: (int i) {
                      setState(() {
                        index = i;
                      });
                    },
                    children: <Widget>[
                      Text(
                        'Gain Weight',
                        style: TextStyle(
                            color: index == 0 ?  Colors.white:Colors.grey,
                        fontSize: 30),
                      ),
                      Text(
                        'Lose weight',
                        style: TextStyle(
                            color: index == 1 ? Colors.white:Colors.grey,
                            fontSize: 30
                        ),
                      ),
                      Text('Get fitter',
                          style: TextStyle(
                              color: index == 2 ? Colors.white:Colors.grey,
                              fontSize: 30)),
                      Text('Gain more flexible',
                          style: TextStyle(
                              color: index == 3 ? Colors.white:Colors.grey,
                              fontSize: 30)),
                      Text('Learn the basic',
                          style: TextStyle(
                              color: index == 4 ? Colors.white:Colors.grey,
                              fontSize: 30))
                    ]),
              )
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 10, bottom: 30),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Levels()),
              );
            },
            backgroundColor:Colors.white,
            label: const Text(
              "Next   >",
              style:
              TextStyle(   fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Color(0xFF790023)),
            ),
          ),
        ),
      ),
    );
  }
}