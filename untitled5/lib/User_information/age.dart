import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/buttons/next_button.dart';
import 'weight.dart';

DateTime? userAge;

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  DateTime _selectedDate = DateTime.now();
  final Shader linearGradient = LinearGradient(
    colors: <Color>[const Color(0xff92A3FD),

      Color(0xff9DCEFF),],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  int index = 0;

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
                "HOW OLD ARE YOU ?",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 30),
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
                    // foreground:  Paint()..shader = linearGradient,
                  // color: Color(0xff92A3FD),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                  child: SizedBox(
                width: 400,
                height: 300,
                child: CupertinoTheme(
                  data:   CupertinoThemeData(
                      brightness: Brightness.dark,
                      textTheme: CupertinoTextThemeData(
                          dateTimePickerTextStyle: TextStyle(
                            foreground:  Paint()..shader = linearGradient,
                              fontSize: 30,

                          ))),
                  child: CupertinoDatePicker(
                    onDateTimeChanged: (newDate) async {
                      setState(() {
                        _selectedDate = newDate;
                        userAge = _selectedDate;
                      });
                    },
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: _selectedDate,
                    maximumYear: 2030,
                    minimumYear: 1930,
                    itemExtent: 40,
                  ),
                ),
              ))
            ],
          ),
        ),
        floatingActionButton: const Padding(
          padding: EdgeInsets.only(right: 10, bottom: 30),
          child: NextButton(page: Weight()),
        ));
  }
}
