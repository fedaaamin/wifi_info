import 'package:flutter/material.dart';
import 'package:untitled5/Home/Sports/Sports.dart';
import 'package:untitled5/Home/Sports/video.dart';


String? title;
String? body;

class NotificationsHome extends StatefulWidget {
  final String? Title1;
  final String? body;

  const NotificationsHome({super.key, this.Title1, this.body});

  @override
  State<NotificationsHome> createState() => _NotificationHomesState();
}

class _NotificationHomesState extends State<NotificationsHome> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoApp(
                      url:"https://youtu.be/GKBJf0dR4mw" ,
                    )))
                    ;
                  },
                  child: Text("run"),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
