import 'package:flutter/material.dart';

class landing2 extends StatelessWidget {
  const landing2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image(
            image: AssetImage("images/img_3.png"),
          ),
          SizedBox(
            height: 66,
          ),
          Text(
            "CREATE A WORKOUT PLAN",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "TO STAY FIT",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
