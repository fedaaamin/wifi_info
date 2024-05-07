import 'package:flutter/material.dart';
import 'package:untitled5/User_information/disease/button.dart';
import 'package:untitled5/User_information/food/food.dart';
import 'package:untitled5/buttons/next_button.dart';
import '../age.dart';

class Disease extends StatefulWidget {
  const Disease({super.key});

  @override
  State<Disease> createState() => _DiseaseState();
}

class _DiseaseState extends State<Disease> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Age()),
              );
            },

            child: const Text(
              "SKIP >",
              style: TextStyle(
                color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  ),
            ),
          )
        ],
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "DO YOU SUFFER FROM",
                style: TextStyle(

                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "ANY DISEASE?, CHOOSE IT",
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

                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Diabetes"),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Pressure "),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Insulin resistance"),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "High cholesterol"),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Pregnancy"),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "High thyroid hormone"),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Kidney disease"),
              SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Mediterranean fever"),
            ],
          ),
        ),
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(right: 10, bottom: 30),
        child: NextButton(page: Food()),
      ),
    );
  }
}
