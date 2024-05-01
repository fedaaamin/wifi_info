import 'package:flutter/material.dart';
import 'package:untitled5/Home/nav_buttons.dart';
import 'package:untitled5/User_information/age.dart';
import 'package:untitled5/api/post_user_info.dart';
import 'package:untitled5/sign%20in/sign_in_google.dart';

import 'day widget.dart';
import 'day.dart';

class Days extends StatefulWidget {
  const Days({super.key});

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  TimeOfDay selectedTime = TimeOfDay.now();
  int index = 0;
  Color buttonColor1 = Color(0xff3B3B3B);

  Color buttonColor2 = Color(0xff3B3B3B);
  String url =
      "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Trainees";

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    availableDays;
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text(
            "ENTER THE TIME AVAILABLE TO",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "PREFORM THE EXERCISE",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "YOU CAN CHOOSE THE MINIMUM OF 3 DAYS AND MAXIMUM 6 DAYS",
            style: TextStyle(color: Colors.white, fontSize: 9),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 50,
                  color: Colors.white,
                ),
                Text(
                  "DAYS",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 25)),
          const DayWidget(),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 40),
            child: Row(
              children: [
                Icon(
                  Icons.access_time_filled_outlined,
                  size: 50,
                  color: Colors.white,
                ),
                Text(
                  "TIME",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor2,
            ),
            child: const Text(
              'Time available for exercise',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                buttonColor2 = Color(0xFF790023);
              });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return TimePickerDialog(
                    initialTime: selectedTime,
                  );
                },
              );
            },
          ),
          const SizedBox(
            height: 34,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor1,
                padding: const EdgeInsets.only(left: 80, right: 80)),
            child: const Text(
              'Sleep Time',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              setState(() {
                buttonColor1 = Color(0xFF790023);
              });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return TimePickerDialog(
                    initialTime: selectedTime,
                  );
                },
              );
            },
          ),
        ],
      ),
      floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: FloatingActionButton.extended(
            elevation: 4,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NavButtons()),
              );
              PostUserInfo();
              print(userId);
              print("==========================");
              print(availableDays);
              print(userAge);
            },
            backgroundColor: Colors.white,
            label: const Text(
              "Next   >",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF790023)),
            ),
          )),
    );
  }
}
