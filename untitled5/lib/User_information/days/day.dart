import 'package:flutter/material.dart';

List? availableDays;

class Day extends StatefulWidget {
  final String day;
  final int numberOfDay;

  const Day({required this.day, super.key, required this.numberOfDay});

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  Color buttonColor1 = Color(0xff3B3B3B);
  Color buttonColor2 = Color(0xFF790023);

  _swapColors() {
    setState(() {
      final temp = buttonColor1;
      buttonColor1 = buttonColor2;
      buttonColor2 = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor1),
        onPressed: () {
          _swapColors();
          setState(() {
            availableDays?.addAll([widget.numberOfDay]);
          });
        },
        child: Text(
          widget.day,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
