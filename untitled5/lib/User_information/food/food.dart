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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Disease()),
              );
            },
            child: Text(
              "SKIP >",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "DO YOU HAVE AN ALLERGY",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "TO ANY FOOD?, CHOOSE IT",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "THIS HELPS US KEEP YOU HEALTHY",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10),
              ),
              const SizedBox(
                height: 30,
              ),
              // end the c
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Legumes"),
                        const SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Egg"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Fish"),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Dairy"),
                        const SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Spices"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Sugars"),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Meat"),
                        const SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Nuts"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Chicken"),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Rice"),
                        const SizedBox(
                          width: 60,
                        ),
                        FoodButtons(text: "Macaroni"),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FoodButtons(text: "Spices"),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        FoodButtons(text: "Chocolate"),
                        const SizedBox(
                          width: 40,
                        ),
                        FoodButtons(text: "Peanut"),
                      ],
                    ),
                    const SizedBox(
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          bottom: 30,
        ),
        child: NextButton(page: Days()),
      ),
    );
  }
}
