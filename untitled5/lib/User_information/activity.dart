

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/buttons/next_button.dart';
import 'days/day_time.dart';
import 'goal.dart';
class Levels extends StatefulWidget {
  const Levels({super.key});

  @override
  State<Levels> createState() => _GoalsState();
}

class _GoalsState extends State<Levels> {
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
                "Your regular physical "
                    "activity level?",
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
                height: 400,
                child: CupertinoPicker(
                    scrollController: FixedExtentScrollController(initialItem: index),
                    diameterRatio: 1,
                    useMagnifier: true,
                    magnification: 1.3,


                    itemExtent: 30,
                    onSelectedItemChanged: (int i) {
                      setState(() {
                        index = i;
                      });
                    },
                    children: <Widget>[
                      Text(
                        'Rookie',
                        style: TextStyle(
                            color: index == 0 ?  Colors.white:Colors.grey ),
                      ),
                      Text(
                        'Beginner',
                        style: TextStyle(
                            color: index == 1 ?   Colors.white:Colors.grey  ),
                      ),
                      Text('Intermediate',
                          style: TextStyle(
                              color: index == 2 ? Colors.white:Colors.grey )),
                      Text('Advance',
                          style: TextStyle(
                              color: index == 3 ? Colors.white:Colors.grey )),
                      Text('True Beast',
                          style: TextStyle(
                              color: index == 4 ? Colors.white:Colors.grey ))
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
                color: Colors.white
                ,onPressed: (){
                Navigator.pop(context,
                MaterialPageRoute(builder: (context)=>const Goals()));
              }, icon:const Icon(Icons.arrow_back), ),
              const SizedBox(
                width: 180,
              ),
              NextButton(
                  page: Days()
              )
            ],
          ),
        ),
        
      ),
    );
  }
}