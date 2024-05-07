import 'package:flutter/material.dart';

class FoodButtons extends StatefulWidget {
  final String text;

  const FoodButtons({super.key, required this.text});

  @override
  State<FoodButtons> createState() => _FoodButtonsState();
}

class _FoodButtonsState extends State<FoodButtons> {

  Color buttonColor2 =
  const Color(0xffA9A9A9);

  Color buttonColor1 =
  const Color(0xff97BEFC);

  _swapColors() {
    setState(() {
      final temp = buttonColor1;
      buttonColor1 = buttonColor2;
      buttonColor2 = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(135, 20),
          backgroundColor: buttonColor2,
          textStyle: const TextStyle(fontSize: 20),
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 15, bottom: 15),
        ),
        onPressed: () {
          _swapColors();
        },
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              //fontSize: 20,
              color: Colors.white,
            ),
          ),
        ));
  }
}
