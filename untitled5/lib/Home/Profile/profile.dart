import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:untitled5/Home/Profile/last_activity.dart';
import 'package:untitled5/Home/Profile/personal_info.dart';
import 'package:untitled5/Home/Profile/setting.dart';
import 'package:untitled5/Home/home_page.dart';
import 'package:untitled5/User_information/food/food.dart';
import 'package:untitled5/sign%20in/sign_in_google.dart';

import '../../User_information/days/day_time.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    int currentValue = 350;
    return Scaffold(


      appBar: AppBar(

        title: const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "EDIT PROFILE",
            style: TextStyle(

              fontSize: 30,
              fontWeight: FontWeight.bold

            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff92A3FD),

                        Color(0xff9DCEFF),
                      ]),


            ),
            child: Center(
              child: IconButton(
                onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                },
                icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SleekCircularSlider(
              innerWidget: (_) {
                return const Center(
                 child:Icon(
                   Icons.person,
                      color: Colors.grey,
                   size: 80,
                 ),

                );
              },
              appearance: CircularSliderAppearance(
                size: 120,
                startAngle: 180,
                angleRange: 360,
                customWidths: CustomSliderWidths(
                  progressBarWidth: 5,
                  trackWidth: 5,
                  handlerSize: 15,
                ),
                customColors: CustomSliderColors(
                  progressBarColors: [

                    const Color(0xff92A3FD),
                    const Color(0xffFA9E97),
                    Color(0xff9DCEFF),

                  ],
                  trackColor: const Color(0xffDDDADA),
                  dotColor: Colors.transparent,
                ),
              ),
              min: 0,
              max: 500,
              initialValue: currentValue.toDouble(),
              onChange: (double value) {

              },
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
                userName!,
              style: const TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 30

              ),
            ),
            const SizedBox(
              height: 66,
            ),
            const Setting(title: "Personal information", page: PersonInfo()),
            const SizedBox(
              height: 15,
            ),
            const Setting(title: "Last Activity Month", page: LastActivity()),
            const SizedBox(
              height: 15,
            ),
            const Setting(title: "Diet Modification ", page:Food()),
            const SizedBox(
              height: 15,
            ),
            const Setting(title: "Sleep time Modification", page: Days()),
            const SizedBox(
              height:41 ,
            ),
            TextButton(
              onPressed: (){
                exit(0);
              },
              child: const Text(
                "Sign Out",
                style: TextStyle(
                    color:
                    Color(0xff790023),
                    fontSize: 20

                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
