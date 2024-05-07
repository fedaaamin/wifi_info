import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled5/sign%20in/sign_in.dart';

class landing3 extends StatelessWidget {
  const landing3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            image: AssetImage("images/img_9.png"),
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20
            ),
            child: Text(
              "Eat Well",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              " Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
              style: TextStyle(fontSize: 15, ),
            ),
          ),
          const SizedBox(
            height: 53,
          ),
          Center(
            child: Container(
              decoration:  BoxDecoration(

                  gradient: const LinearGradient(

                       begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Color(0xff92A3FD), Color(0xff9DCEFF)]
                  ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0

                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: const SizedBox(
                  width: 150,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.arrow_right, size: 40, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
