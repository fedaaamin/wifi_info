import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  final Widget page;
  const NextButton({
    required this.page,
    super.key});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton.extended(
      elevation: 4,
      shape:   RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  widget.page),
        );
      },
      backgroundColor: Colors.white,
      label: const Text("Next   >",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:Color(0xFF790023)
        ),
      ),
    );
  }
}
