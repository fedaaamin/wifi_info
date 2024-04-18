import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  String result = DateFormat(' EEE d MMMM ').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 10
              ),
              child: Text(
                  "HELLO mahmoud,",
              style:TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              )
                ,),
            ),
            Text(
              "Good Morning",
              style:TextStyle(
                  color: Colors.white,
                  fontSize: 15,
              )
              ,),
            Row(
              children: [
                Text(
                  "Today workout",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )
                  ,),
                SizedBox(
                  width: 92,
                ),
                Text(
                  // _selectedDate.toString(),
                   result.toString() ,
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )
                  ,),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50)
                  ),
                  padding: EdgeInsets.only(
                  left: 20,
                    right: 20
                       ),
                  child: Image.asset(
                      'images/img_1.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30
                  ),
                  child: Text("Day1 - WarpUp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      DateFormat('jm').format(DateTime.now()
                      ).toString(),
                    style: TextStyle(
                      color: Colors.red
                    )
                  ),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
