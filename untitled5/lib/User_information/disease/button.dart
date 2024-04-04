import 'package:flutter/material.dart';

class DiseaseButton extends StatefulWidget {
  final String text;
  const DiseaseButton({
    super.key,
    required this.text
  });

  @override
  State<DiseaseButton> createState() => _DiseaseButtonState();
}

class _DiseaseButtonState extends State<DiseaseButton> {
  bool click=true;
  bool unClick=false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(88, 36),
          backgroundColor: click?const Color(0xff3B3B3B):const Color(0xFF790023),
            textStyle: const TextStyle(fontSize: 20),
          padding: const EdgeInsets.only(
              left: 52,
              right: 52,
              top: 23,
              bottom: 23
          ),
        ),

        onPressed: () {
          setState(() {
            click=unClick;

          });
        },
        child:
         FittedBox(
           fit: BoxFit.fitWidth,
           child: Text(
           widget.text ,
            textAlign: TextAlign.center,
            style: TextStyle(
                //fontSize: 20,
                color: Colors.white,
            ),
                   ),
         )

    );
  }
}