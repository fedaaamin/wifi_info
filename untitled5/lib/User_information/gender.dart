import 'package:flutter/material.dart';
import 'package:untitled5/buttons/next_button.dart';

import 'age.dart';

String? userGender;

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  List<Color> buttonColor1 = <Color>[
    const Color(0xff92A3FD),

    Color(0xff9DCEFF),
  ];
  List<Color> buttonColor2 = [
   const Color(0xffA9A9A9),
    const Color(0xffA9A9A9),
    const Color(0xffA9A9A9),


  ];

  _swapColors() {
    setState(() {
      final temp = buttonColor1;
      buttonColor1 = buttonColor2;
      buttonColor2 = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Text(
              "TELL US ABOUT YOURSELF",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "TO GIVE YOU A BETTER EXPERIENCE WE NEED",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "TO KNOW YOUR GENDER",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      colors: buttonColor1),
                ),
                width: 150,
                height: 150,
                child: IconButton(
                  onPressed: () async {
                    _swapColors();
                    setState(() {
                      userGender = "Female";
                    });
                  },
                  icon: const Icon(
                    Icons.female,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(colors: buttonColor2),
                ),
                width: 150,
                height: 150,
                child: IconButton(
                  onPressed: () async {
                    _swapColors();
                    setState(() {
                      userGender = "Male";
                    });
                  },
                  icon: const Icon(
                    Icons.male,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(right: 10, bottom: 30),
        child: NextButton(page: Age()),
      ),
    );
  }
}
