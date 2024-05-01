import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled5/Home/Sports/ui_sports.dart';
import 'package:untitled5/Home/user_food/food_card.dart';
import 'package:untitled5/sign%20in/sign_in_google.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = DateFormat(' EEE d MMMM ').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                  ),
                  child: Text(
                    "HELLO ${userName}.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 63,
                ),
                Row(
                  children: [
                    Text(
                      "Today workout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120,
                      ),
                      child: Text(
                        // _selectedDate.toString(),
                        result.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 304,
                        height: 172,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => UiSports()));
                          },
                          child: Image.asset(
                            "images/img_5.png",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25, left: 20),
                      child: Text(
                        "Day1 - WarpUp",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 5),
                      child: Text(
                          DateFormat('jm').format(DateTime.now()).toString(),
                          style: TextStyle(
                              color: Color(0xff790023),
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Text(
                  "Today Eating Plan",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                FoodCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
