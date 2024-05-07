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
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xff92A3FD),

                          Color(0xff9DCEFF),
                        ]),
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Icon(
                  Icons.circle,
                  color: Colors.transparent,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
              title,
                style: const TextStyle(

                    fontSize: 25
                ),
              ),

              Spacer(),
              Text(
                  time,
                style: const TextStyle(

                    fontSize: 10
                ),
              )
            ],
          ),
          Text(
            body,
      style: const TextStyle(

      fontSize: 15
      ),
          ),

          Container(
            width: double.infinity,
            height: .25,
            color: Colors.grey,
          )

        ],
      ),
    );
  }
}
