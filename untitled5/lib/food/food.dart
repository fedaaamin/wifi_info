import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/Home/nav_buttons.dart';
import 'package:untitled5/User_information/disease/Disease.dart';
import 'package:untitled5/food/food_buttons.dart';

import '../buttons/next_button.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  bool click=true;
  bool unClick=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Disease()),
            );
          },
            child: Text("SKIP >",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text("DO YOU SUFFER FROM",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text("ANY DISEASE?, CHOOSE IT"

              ,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("THIS HELPS US KEEP YOU HEALTHY"
              ,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 10
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // end the c
            SingleChildScrollView(
              child: Column(
                children: [
                  FoodButtons(text: "Legumes"),



            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Egg"),
            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Fish"),
            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Dairy"),
            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Spices"),
            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Sugars"),
            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Meat"),
            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Nuts"),
            const SizedBox(
              height: 30,
            ),
            FoodButtons(text: "Chicken"),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
            ),],
            ),

      ),
      floatingActionButton: Padding(

        padding: const EdgeInsets.only(
            right: 10,
            bottom: 30,
        ),
        child: NextButton(
            page: NavButtons()
        ),

      ),
    );
  }
}
