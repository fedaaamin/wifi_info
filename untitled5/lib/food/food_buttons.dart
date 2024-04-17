import 'package:flutter/material.dart';

class FoodButtons extends StatefulWidget {
  final String text;
  const FoodButtons({super.key,required this.text});

  @override
  State<FoodButtons> createState() => _FoodButtonsState();
}

class _FoodButtonsState extends State<FoodButtons> {
  bool click = true;
  bool unClick = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(20,20),
          backgroundColor:
          click ? const Color(0xff3B3B3B) : const Color(0xFF790023),
          textStyle: const TextStyle(fontSize: 20),
          padding:
          const EdgeInsets.only(
              left: 32,
              right:43 ,
              top: 1,
              bottom: 3
          ),
        ),
        onPressed: () {
          setState(() {
            click = unClick;
          });
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
