import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  final Widget page;

  const NextButton({required this.page, super.key});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(

          gradient: const LinearGradient(

           begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff92A3FD),
                Color(0xff9DCEFF)

              ]
          ),
          borderRadius: BorderRadius.circular(50)
      ),
      child: FloatingActionButton.extended(
                 elevation: 0,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.page),
          );
        },

        label: const Text(
          "Next   >",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
             color: Colors.white),
        ),
      ),
    );
  }
}
