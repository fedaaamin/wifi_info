import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:untitled5/Home/Profile/personal_widget.dart';

import 'package:untitled5/sign%20in/sign_in_google.dart';

class PersonInfo extends StatefulWidget {
  const PersonInfo({super.key});

  @override
  State<PersonInfo> createState() => _PersonInfoState();
}

class _PersonInfoState extends State<PersonInfo> {
  int currentValue = 500;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1C1C1E),
        appBar: AppBar(
          backgroundColor:  const Color(0xff1C1C1E),
          title: const Text(
            "PERSONAl INFORMATION",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold

            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color:  Colors.black12
              ),
              child: Center(
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context,);
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 120,
                  right: 120,
                  top: 40
                ),
                child: SleekCircularSlider(
                  innerWidget: (_) {
                    return const Center(
                      child:Icon(
                        Icons.person,
                        color: Colors.white,
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
                        const Color(0xff790023),
                        Colors.white,
                      ],
                      trackColor: const Color(0xff2C2C2E),
                      dotColor: Colors.transparent,
                    ),
                  ),
                  min: 0,
                  max: 500,
                  initialValue: currentValue.toDouble(),
                  onChange: (double value) {
          
                  },
                ),
              ),
              UserWidget(title: "Name", info: userName.toString()),
              UserWidget(title: "Email", info: userEmail.toString()),
              const UserWidget(title: "Age", info:"21" ),
              const UserWidget(title: "Weight", info: "59 Kg"),
              const UserWidget(title: "Height", info: "167 Cm"),
              const UserWidget(title: "Goal", info: "Body Building"),
            const  UserWidget(title: "Activity Level", info: 'Beginner'),
              const UserWidget(title: "Daily Calories", info: "1600 Cal"),
              const UserWidget(title: "BMI", info: "26")

              
            ],
          ),
        ),

      ),
    );
  }
}
