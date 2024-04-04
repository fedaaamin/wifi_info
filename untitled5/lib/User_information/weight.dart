
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/buttons/next_button.dart';

import 'height.dart';

class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  double selectedWeight = 50.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.black,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text("WHAT’S YOUR WEIGHT?",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("THIS HELP US CREATE YOUR PERSONALIZED PLAN"

                ,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("TO KNOW YOUR GENDER"
                ,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                  child:SizedBox(
                    width: 400,
                    height: 300,
                    child: CupertinoTheme(
                      data: const CupertinoThemeData(
                        brightness: Brightness.dark,
                      ),
                      child:CupertinoPicker(
                        itemExtent: 40,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedWeight = 30.0 + index.toDouble();

                          });
                        },
                        scrollController: FixedExtentScrollController(initialItem: selectedWeight.toInt()),
                        diameterRatio: 1,
                        useMagnifier: true,
                        magnification: 1.3,
                        children: List.generate(150, (index) {
                          return Text('${30 + index} kg',
                          style: const TextStyle(


                              fontSize: 30
                          ),);
                        }),
                      ),
                    ),
                    ),


              )
            ],
          ),
        ),
        floatingActionButton: Padding(

          padding: const EdgeInsets.only(
              right: 10,
              bottom: 30
          ),
          child: NextButton(
              page: Height()
          ),
        )
      ),
    );
  }
}
