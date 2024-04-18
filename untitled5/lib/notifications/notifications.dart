import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
String? title;

String? body;

class NotificationsHome extends StatefulWidget {
  final String? Title1;
  final String? body;
  const NotificationsHome({super.key , this.Title1, this.body});

  @override
  State<NotificationsHome> createState() => _NotificationHomesState();
}

class _NotificationHomesState extends State<NotificationsHome> {
  @override
void initState()
  {
  super.initState();
  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print('Got a message whilst in the foreground!');
    print('Message data: ${message.data}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
      print("======================================");
      print(message.notification!.title);
      print(message.notification!.body);
      print("======================================");
     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${message.notification!.body}")));

    }
  });


}


  @override
  Widget build(BuildContext context) {
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print('Message data: ${message.data}');
    //   if (message.notification != null) {
    //     //your stuff
    //   }
    // });


    // final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
      backgroundColor: Color(0xff505050),
      body: Column(
        children: [
          Text(title.toString()),
          Text(body.toString())
          // Text(message.notification!.title.toString()),
          // Text(message.notification!.body.toString()),
          // Text(message.data.toString())
        ],
      ),
    );
  }
}
