
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'weight.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  DateTime _selectedDate = DateTime.now();
  int index=0;
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
              const Text("HOW OLD ARE YOU ?",
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
                        textTheme: CupertinoTextThemeData(
                          dateTimePickerTextStyle: TextStyle(
                            fontSize: 30
                          )
                        )
                      ),
                      child: CupertinoDatePicker(
                          onDateTimeChanged:(newDate){
                            setState(() {
                              _selectedDate= newDate;
                            });
                          },
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: _selectedDate,
                        maximumYear: 2030,
                        minimumYear: 2010,
                        itemExtent: 40,


                      ),
                    ),
                  )

              )
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(
              right: 10,
              bottom: 30
          ),
          child: FloatingActionButton.extended(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  const Weight()),
              );
            },
            backgroundColor: Colors.white,
            label: const Text("Next   >",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Color(0xFF790023)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
