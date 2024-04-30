
import 'package:flutter/material.dart';
import 'package:untitled5/User_information/days/day.dart';
List? availableDays;
class DayWidget extends StatefulWidget {
  const DayWidget({super.key});

  @override
  State<DayWidget> createState() => _DayWidgetState();
}

class _DayWidgetState extends State<DayWidget> {
   List days=[
     "",
     "Saturday",
     "Sunday",
     "Monday",
     "Tuesday",
     "Wednesday",
     "Thursday",
     "Friday",

   ];

  @override
  Widget build(BuildContext context) {

    return  Column(
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
            Day(day: days[1], numberOfDay: 1,),
              SizedBox(
                width: 5,
              ),
          Day(day: days[2], numberOfDay: 2,),
              SizedBox(
                width: 5,
              ),
              Day(day: days[3], numberOfDay: 3,),
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
              Day(day: days[4], numberOfDay: 4,),
              SizedBox(
                width: 5,
              ),
              Day(day: days[5], numberOfDay: 5,),
              SizedBox(
                width: 4,
              ),
              Day(day: days[6], numberOfDay: 6,),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child:  Day(day: days[7], numberOfDay: 7,),
        )
      ],
    );
  }
}
