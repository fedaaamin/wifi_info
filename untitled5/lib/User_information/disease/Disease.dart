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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Age()),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "DO YOU SUFFER FROM",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "ANY DISEASE?, CHOOSE IT",
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
                height: 35,
              ),
              DiseaseButton(text: "Diabetes"),
              const SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Pressure "),
              const SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Insulin resistance"),
              const SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "High cholesterol"),
              const SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Pregnancy"),
              const SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "High thyroid hormone"),
              const SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Kidney disease"),
              const SizedBox(
                height: 35,
              ),
              DiseaseButton(text: "Mediterranean fever"),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10, bottom: 30),
        child: NextButton(page: Food()),
      ),
    );
  }
}
