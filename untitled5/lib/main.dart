import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/api/api_post.dart';
import 'package:untitled5/notifications/notifications.dart';
import 'package:untitled5/notifications/notifications_firebase.dart';

import 'logo.dart';

final navigatorKey = GlobalKey<NavigatorState>();
String? title;

String? body;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  print("=========================================");
  title = message.notification!.title;
  print(title);
  body = message.notification!.body;
  print(body);
  navigatorKey.currentState
      ?.pushNamed("/notificationsHome", arguments: message);

  // print("Handling a background message: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyA8d50mdepuR-kevg3PD_EzO_nU3xGB-40",
    appId: "1:194041267213:android:9e5da039f273c5483e8144",
    messagingSenderId: "194041267213",
    projectId: "fitness-4a734",
    storageBucket: "fitness-4a734.appspot.com",
  ));
  DioHelper.init();
  NotificationsFirebase().intiNotifications();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: Logo(),
      navigatorKey: navigatorKey,
      routes: {
        "/notificationsHome": (context) => Notifications(
            // Title: title, body: body,
            )
      },
    );
  }
}
