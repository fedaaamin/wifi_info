
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/api/api_post.dart';
import 'package:untitled5/buttons/next_button.dart';
import 'package:intl/intl.dart';

import 'weight.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  DateTime _selectedDate = DateTime.now();


  int index=0;
  final String url =
      "http://11163230:60-dayfreetrial@fitnessapi-001-site1.itempurl.com/Api/Trainees";
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
                          onDateTimeChanged:(newDate) async{
                            setState(() {
                              _selectedDate= newDate;
                            });
                 final dioHelper = DioHelper();
                   await dioHelper.postDate(url: url, data: {
                   "trainee":{
                   "dateOfBirth":_selectedDate
                      }
                      });

                          },
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: _selectedDate,
                        maximumYear: 2030,
                        minimumYear: 1930,
                        itemExtent: 40,


                      ),
                    ),
                  )

              )
            ],
          ),
        ),
        floatingActionButton:Padding(

          padding: const EdgeInsets.only(
              right: 10,
              bottom: 30
          ),
          child: NextButton(
              page: Weight()
          ),
        )
      ),
    );
  }
}
