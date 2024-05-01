import 'package:flutter/material.dart';

class NewNotifications extends StatelessWidget {
  final String title;
  final String body;
  final String time;

  const NewNotifications({super.key, required this.title, required this.body, required this.time});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.circle,
                color: Color(0xff790023),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
              title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25
                ),
              ),

              Spacer(),
              Text(
                  time,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10
                ),
              )
            ],
          ),
          Text(
            body,
      style: const TextStyle(
      color: Colors.white,
      fontSize: 15
      ),
          ),

          Container(
            width: double.infinity,
            height: .25,
            color: Colors.white,
          )

        ],
      ),
    );
  }
}
