
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/days/day%20widget.dart';
import 'age.dart';
class Days extends StatefulWidget {
  const Days({super.key});

  @override
  State<Days> createState() => _DaysState();
}

class _DaysState extends State<Days> {
  TimeOfDay selectedTime = TimeOfDay.now();
  int index=0;
  bool click=true;
  bool click2=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: Colors.black,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.center
        ,
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text("ENTER THE TIME AVAILABLE TO",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("PREFORM THE EXERCISE"

            ,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text("YOU CAN CHOOSE THE MINIMUM OF 3 DAYS AND MAXIMUM 6 DAYS"
            ,
            style: TextStyle(
                color: Colors.white,
                fontSize: 9
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15
            ),
            child: Row(
              children: [
                Icon(
                    Icons.calendar_today_outlined,
                  size: 50,
                  color: Colors.white,

                ),
                Text("DAYS",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),)
              ],
            ),
          ),
           const Padding(padding: EdgeInsets.only(top: 25)
           ),
          const DayWidget(),
          const Padding(
            padding: EdgeInsets.only(left: 15,
            top: 40),
            child: Row(
              children: [
                Icon(
                  Icons.access_time_filled_outlined
                  ,
                  size: 50,
                  color: Colors.white,

                ),
                Text("TIME",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),)
              ],
            ),
          ),

          ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: click? const Color(0xff3B3B3B):const Color(0xFF790023),


              ),
            child:
            const Text(
                'Time available for exercise'
            ,style: TextStyle(
              color: Colors.white
            ),),
            onPressed: () {
           setState(() {
               click=false;
                 });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return TimePickerDialog(initialTime: selectedTime,);
                },
              );
            },
          ),
          const SizedBox(
            height: 34,
          ),
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor: click2? const Color(0xff3B3B3B):const Color(0xFF790023),
              padding: EdgeInsets.only(left: 80,
              right: 80)
            ),
            
            child:
            const Text(
              'Sleep Time'
              ,style: TextStyle(
                color: Colors.white
            ),),
            onPressed: () {
              setState(() {
                click2=false;
              });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return TimePickerDialog(initialTime: selectedTime,);
                },
              );
            },
          )
        ],
      ),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(
      //       right: 10,
      //       bottom: 30
      //   ),
      //   child: FloatingActionButton.extended(
      //     onPressed: (){
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) =>  const Age()),
      //       );
      //     },
      //     backgroundColor: Colors.white,
      //     label: const Text("Next   >",
      //       style: TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //           color:Color(0xFF790023)
      //       ),
      //     ),
      //   ),
      // ),

    );
  }
}
