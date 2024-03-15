import 'package:flutter/material.dart';

class landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Image(
            image: AssetImage("images/img_2.png"),
          ),
          SizedBox(
            height: 66,
          ),
          Text(
            "MEET YOUR BODY",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "START YOUR JOURNEY",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}