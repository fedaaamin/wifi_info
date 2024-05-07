import 'package:flutter/material.dart';
import 'package:untitled5/notifications/New_notifications.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool firstTextSelected = false;
  bool secondTextSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 55, right: 55, top: 55),
            child: Text(
              "NOTIFICATIONS",
              style: TextStyle(

                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            width: 314,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        firstTextSelected = !firstTextSelected;
                        secondTextSelected = false;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: firstTextSelected
                            ? const Color(0xff97BEFC)
                            :  Colors.grey ,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          ' New',
                          style: TextStyle(
                           color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        secondTextSelected = !secondTextSelected;
                        firstTextSelected = false;
                      });
                    },
                    child: Container(
                      width: 164,
                      height: 50,
                      decoration: BoxDecoration(
                        color: secondTextSelected
                            ? const Color(0xff9DCEFF)
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                        child: Text(
                          'All',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Display text based on selection
          if (firstTextSelected)
            const Column(
              children: [

                NewNotifications(title: "Time for sleep",
                    body: "You should be sleep now!", time: 'Now',),
                SizedBox(height: 20,),
                NewNotifications(title: "Time for Activity",
                    body: "Let's go to complete the Workout", time: '4:00 pm',),
                NewNotifications(title: "Drink Water",
                    body: "Don't forget to drink water!", time: '7:00 pm'),
                SizedBox(height: 20,),


              ],
            ),

          if (secondTextSelected)
            const SingleChildScrollView(
              child: Column(
                children: [


                  NewNotifications(title: "Time for sleep",
                      body: "You should be sleep now!", time: 'Now',),
                  SizedBox(height: 20,),
                  NewNotifications(title: "Drink Water",
                      body: "Don't forget to drink water!", time: '7:00 pm',),
                  SizedBox(height: 20,),
                  NewNotifications(title: "Time for Activity",
                      body: "Let's go to complete the Workout", time: '4:00 pm',),
                  SizedBox(height: 20,),
                  NewNotifications(
                      title: "Congratulations", body:"35% your daily challenge completed", time: '2:30 pm 3Apr2023',),
                  SizedBox(height: 20,),
                  NewNotifications(title: "welcome", body: "Welcome to our App,Enjoy!", time: '9:10 am 1Feb2023',)



                ],
              ),
            ),

        ],
      ),
    );
  }
}
