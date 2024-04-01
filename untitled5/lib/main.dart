import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'logo.dart';
void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyA8d50mdepuR-kevg3PD_EzO_nU3xGB-40",
        appId: "1:194041267213:android:9e5da039f273c5483e8144",
        messagingSenderId: "194041267213",
        projectId: "fitness-4a734",
        storageBucket: "fitness-4a734.appspot.com",
      ));

    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      home:const Logo() ,
    );
  }
}


