import 'package:flutter/material.dart';
import 'package:untitled5/Home/Sports/video.dart';
import 'package:untitled5/api/api_post.dart';

import '../../sign in/sign_in_google.dart';

class Exercise {
  final String name;
  final String duration;
  final String videoLink;

  Exercise(
      {required this.name, required this.duration, required this.videoLink});
}

class UiSports extends StatefulWidget {
  const UiSports({super.key});

  @override
  State<UiSports> createState() => _UiSportsState();
}

class _UiSportsState extends State<UiSports> {
  List<Exercise> exercises = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    try {
      final dioHelper = DioHelper();
      final response = await dioHelper.getData(
          url:
              "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Workout/$userId");
      List<String> responseData = List<String>.from(response.data);
      parseResponse(responseData);
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  void parseResponse(List<String> responseData) {
    for (int i = 0; i < responseData.length; i += 3) {
      String name = responseData[i];
      String duration = responseData[i + 1];
      String videoLink = responseData[i + 2];
      Exercise exercise =
          Exercise(name: name, duration: duration, videoLink: videoLink);
      setState(() {
        exercises.add(exercise);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/img_3.png"),
            const Padding(
              padding:
                  EdgeInsets.only(top: 18, left: 25, bottom: 12),
              child: Text(
                'Day 01 - Warm Up',
                style: TextStyle(

                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                '04 Workouts for Beginner',
                style: TextStyle(

                  fontSize: 13,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 12),
              child: Row(
                children: [
                  Container(
                    width: 120,
                    height: 40,
                    padding: const EdgeInsetsDirectional.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff97BEFC)),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: Colors.white,
                        ),

                        Text(
                          "  10 min",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  Container(
                    width: 120,
                    height: 40,
                    padding: const EdgeInsetsDirectional.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff97BEFC),



                        ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          color: Colors.white,
                        ),

                        Text(
                          "  350 Cal",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(23),
              child: Text(
                "Want your body to be healthy. Join our "
                "program with directions according to body’s goals."
                " Increasing physical strength is the goal of strenght training. "
                "Maintain body fitness by doing physical exercise at least 2-3 times a week. ",

              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                Exercise exercise = exercises[index];
                return Expanded(
                  child: Container(
                    width: 328,
                    height: 76,
                    padding: const EdgeInsetsDirectional.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),


                    ),
                    child: Card(
                      elevation: 3,
                      color: const Color(0xff97BEFC),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  exercise.name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Text(
                                  exercise.duration,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              VideoApp(
                                                url: exercise.videoLink,
                                              )));
                                },
                                icon: const Icon(
                                    Icons.play_circle_outline_sharp,color: Colors.white,))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
