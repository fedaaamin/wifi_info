import 'package:flutter/material.dart';
import 'package:untitled5/User_information/days/day_time.dart';
import 'package:untitled5/User_information/disease/Disease.dart';

import '../../buttons/next_button.dart';
import 'food_buttons.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  bool click = true;
  bool unClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Disease()),
              );
            },
            child: const Text(
              "SKIP >",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          )
        ],
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "DO YOU HAVE AN ALLERGY",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "TO ANY FOOD?, CHOOSE IT",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "THIS HELPS US KEEP YOU HEALTHY",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              SizedBox(
                height: 30,
              ),
              // end the c
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Legumes"),
                        SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Egg"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Fish"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Dairy"),
                        SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Spices"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Sugars"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Meat"),
                        SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Nuts"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Chicken"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Rice"),
                        SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Macaroni"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Spices"),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Chocolate"),
                        SizedBox(
                          width: 40,
                        ),
                        FoodButtons(text: "Peanut"),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Almonds"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(
          right: 10,
          bottom: 30,
        ),
        child: NextButton(page: Days()),
      ),
    );
  }
}
