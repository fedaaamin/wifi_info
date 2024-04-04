import 'package:flutter/material.dart';

class Day extends StatefulWidget {
final  String day;
  const Day({required this.day,super.key});

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  bool click=false;
  bool unClick= true;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:ElevatedButton.styleFrom(
        backgroundColor: click?const Color(0xff3B3B3B):const Color(0xFF790023),
      )
        ,onPressed: (){
        setState(() {
          click=unClick;
        });
    },
        child: Text(
        widget.day,
        style:const TextStyle(
          color:Colors.white
        ),)
    );
  }
}

