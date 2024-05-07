import 'package:flutter/material.dart';

class landing extends StatelessWidget {
  const landing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("images/img_7.png"),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Text(
                "Track Your Goal"  ,
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
              style: TextStyle(
                  fontSize: 17,),
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
