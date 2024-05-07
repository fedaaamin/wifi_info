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
                    "HELLO $userName.",
                    style: const TextStyle(

                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  children: [
                    const Text(
                      "Today workout",
                      style: TextStyle(

                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 120,
                      ),
                      child: Text(
                        // _selectedDate.toString(),
                        result.toString(),
                        style: const TextStyle(

                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
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
                                    builder: (context) => const UiSports()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff97BEFC).withOpacity(.50)
                            ),
                            child: Image.asset(
                              "images/img_4.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25, left: 20),
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
                          style: const TextStyle(
                              color: Color(0xff92A3FD),
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                const Text(
                  "Today Eating Plan",
                  style: TextStyle(

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
