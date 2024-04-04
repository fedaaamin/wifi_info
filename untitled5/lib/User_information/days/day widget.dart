import 'package:flutter/material.dart';
import 'day.dart';

class DayWidget extends StatelessWidget {
  const DayWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 10,
              top: 23,
              right: 13
          ),
          child: Row(
            children: [
              Day(day: "Saturday"),
              SizedBox(
                width: 5,
              ),
              Day(day: "Sunday"),
              SizedBox(
                width: 5,
              ),
              Day(day: "Monday"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: 10
          ),
          child: Row(
            children: [
              Day(day: "Tuesday"),
              SizedBox(
                width: 5,
              ),
              Day(day: "Wednesday"),
              SizedBox(
                width: 4,
              ),
              Day(day: "Thursday"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Day(day: "Friday"),
        )
      ],
    );
  }
}
