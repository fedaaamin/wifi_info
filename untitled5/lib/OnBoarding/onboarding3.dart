import 'package:flutter/material.dart';
import 'package:untitled5/sign_in.dart';

class landing3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Image(
            image: AssetImage("images/img_4.png"),

          ),
          const SizedBox(
            height: 66,
          ),
          const Text(
            "ACTION IS THE",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            " KEY TO ALL SUCCESS",
            style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 53,
          ),
          ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor:  const Color(0xff790023),
              // padding: EdgeInsets.only(
              //   left: 40,
              //   right: 40,
              //   top: 10,
              //   bottom: 10
              // )
            ),onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context)=>const SignIn())
            );
          },
              child:Container(
                width: 150,
                height: 50,
                child: const Row(
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
                      width:
                      8,
                    ),
                    Icon(
                        Icons.arrow_right,
                    size: 40,
                      color: Colors.white),
                  ],
                ),
              ), )
        ],
      ),
    );
  }
}