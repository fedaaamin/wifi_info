// import 'package:flutter/material.dart';
// import 'package:untitled5/api/api_post.dart';
// import 'package:untitled5/sign%20in/sign_in_google.dart';
//
// class Exercise {
//   final String name;
//   final String duration;
//   final String videoLink;
//
//   Exercise({required this.name, required this.duration, required this.videoLink});
// }
//
//
// class _MyAppState extends State<MyApp> {
//   List<Exercise> exercises = [];
//
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//
//   void fetchData() async {
//     try {
//       final dioHelper=DioHelper();
//      final response=await dioHelper.getData(url: "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Workout/$userId");
//       List<String> responseData = List<String>.from(response.data);
//       parseResponse(responseData);
//     } catch (e) {
//       print('Error fetching data: $e');
//     }
//   }
//
//   void parseResponse(List<String> responseData) {
//     for (int i = 0; i < responseData.length; i += 3) {
//       String name = responseData[i];
//       String duration = responseData[i + 1];
//       String videoLink = responseData[i + 2];
//       Exercise exercise = Exercise(name: name, duration: duration, videoLink: videoLink);
//       setState(() {
//         exercises.add(exercise);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Exercise List'),
//         ),
//         body: Container(
//           width: 328,
//           height: 76,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10)
//           ),
//           child: ListView.builder(
//             itemCount: exercises.length,
//             itemBuilder: (context, index) {
//               Exercise exercise = exercises[index];
//               return ListTile(
//                 title: Text(exercise.name),
//                 subtitle: Text('Duration: ${exercise.duration}'),
//                 onTap: () {
//                   // Navigate to video screen or open video link
//                   // Example: launch(exercise.videoLink)
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

