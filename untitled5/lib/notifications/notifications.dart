import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationsHome extends StatefulWidget {
  final String? Title;
  final String? body;
  const NotificationsHome({super.key , this.Title, this.body});

  @override
  State<NotificationsHome> createState() => _NotificationHomesState();
}

class _NotificationHomesState extends State<NotificationsHome> {


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
          Text(widget.Title.toString()),
          Text(widget.body.toString())
          // Text(message.notification!.title.toString()),
          // Text(message.notification!.body.toString()),
          // Text(message.data.toString())
        ],
      ),
    );
  }
}
