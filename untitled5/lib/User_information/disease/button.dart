import 'package:flutter/material.dart';

class DiseaseButton extends StatefulWidget {
  final String text;

  const DiseaseButton({super.key, required this.text});

  @override
  State<DiseaseButton> createState() => _DiseaseButtonState();
}

class _DiseaseButtonState extends State<DiseaseButton> {
 Color buttonColor1 =
     const Color(0xff97BEFC);
  Color buttonColor2 =
  const Color(0xffA9A9A9);



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
          minimumSize: Size(88, 36),
                  backgroundColor: buttonColor2,
          textStyle: const TextStyle(
              fontSize: 20,
          color: Colors.white),
          padding:
              const EdgeInsets.only(left: 40, right: 40, top: 18, bottom: 18),
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
