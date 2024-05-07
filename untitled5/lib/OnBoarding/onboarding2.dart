import 'package:flutter/material.dart';

class landing2 extends StatelessWidget {
  const landing2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("images/img_8.png"),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,

            ),
            child: Text(
              "Get Burn",
              style: TextStyle(
                 fontSize: 30,
                  fontWeight: FontWeight.bold,
                textBaseline: TextBaseline.alphabetic
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
              style: TextStyle(
                  fontSize: 17, ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
