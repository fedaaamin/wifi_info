import 'package:flutter/material.dart';

class BackButtons extends StatefulWidget {
  final Widget Page;

  const BackButtons({required this.Page, super.key});

  @override
  State<BackButtons> createState() => _BackButtonsState();
}

class _BackButtonsState extends State<BackButtons> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      color: Colors.white,
      onPressed: () {
        Navigator.pop(
            context, MaterialPageRoute(builder: (context) => widget.Page));
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
