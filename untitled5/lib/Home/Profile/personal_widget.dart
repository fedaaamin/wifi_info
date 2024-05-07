import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  final String title;
  final String info;

  const UserWidget({super.key, required this.title, required this.info});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 8
          ),
          child: Text(
             title,
          style: const TextStyle(
            color: Color(0xff97BEFC),
            fontSize: 20,
          ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 4
          ),
          child: Text(
            info,
            style: const TextStyle(

              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(height: 30,),
        Container(
          width: double.infinity,
          height: .25,
          color: Colors.grey,
        )

      ],
    );
  }
}
