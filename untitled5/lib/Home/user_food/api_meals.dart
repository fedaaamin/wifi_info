// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
//
// import '../../sign in/sign_in_google.dart';
//
// class MealData {
//   final String mealName;
//   final List<Map<String, String>> components;
//
//   MealData({required this.mealName, required this.components});
// }
//
// class YourWidget extends StatefulWidget {
//   @override
//   _YourWidgetState createState() => _YourWidgetState();
// }
//
// class _YourWidgetState extends State<YourWidget> {
//   late List<MealData> mealsData = [];
//
//   bool _showOptions = false;
//
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//
//   fetchData() async {
//     // Fetch data from API
//     var dio = Dio();
//     var response = await dio.get('http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Diet/$userId');
//
//     // Parse the response JSON
//     Map<String, dynamic> data = response.data;
//
//     // Extract meal names and components
//     data.forEach((key, value) {
//       List<Map<String, String>> components = [];
//       for (var item in value) {
//         components.add({
//           'name': item['item1'],
//           'imagePath': item['item2'],
//         });
//       }
//       mealsData.add(MealData(mealName: key, components: components));
//     });
//
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(
//             top: 26,
//             right: 16,
//           ),
//           child: GestureDetector(
//             onTap: () {
//               setState(() {
//                 _showOptions = !_showOptions;
//               });
//             },
//             child: Container(
//               width: 500,
//               height: 43,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xff505050),
//               ),
//               child: Row(
//                 children: [
//                   Text(
//                     'Select Meal',
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(width: 140),
//                   Icon(
//                     Icons.arrow_drop_down,
//                     size: 30,
//                     color: Colors.white,
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//         SizedBox(height: .5),
//         if (_showOptions)
//           Padding(
//             padding: const EdgeInsets.only(left: 16, right: 16),
//             child: Container(
//               width: 285,
//               height: 100,
//               padding: EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xff505050),
//               ),
//               child: ListView.builder(
//                 itemCount: mealsData.length,
//                 itemBuilder: (context, index) {
//                   MealData mealData = mealsData[index];
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: 252,
//                         height: 62,
//                         padding: EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(15),
//                           color: Color(0xff790023),
//                         ),
//                         child: Row(
//                           children: [
//                             Image.network(
//                               mealData.components[0]['imagePath']!,
//                               width: 40,
//                               height: 40,
//                             ),
//                             SizedBox(width: 20),
//                             Text(
//                               mealData.mealName,
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
// To parse this JSON data, do
//


import 'dart:convert';

import 'package:untitled5/sign%20in/sign_in_google.dart';
final apiMeals = apiMealsFromJson("http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Diet/$userId");

ApiMeals apiMealsFromJson(String str) => ApiMeals.fromJson(json.decode(
    str));



class ApiMeals {
  List<AfterWork>? breakfast;
  List<AfterWork>? snack;
  List<AfterWork>? lunch;
  List<AfterWork>? afterWork;
  List<AfterWork>? dinner;

  ApiMeals({
    this.breakfast,
    this.snack,
    this.lunch,
    this.afterWork,
    this.dinner,
  });

  factory ApiMeals.fromJson(Map<String, dynamic> json) {
    return ApiMeals(
      breakfast: json["Breakfast"] == null
          ? []
          : List<AfterWork>.from(
          json["Breakfast"].map((x) => AfterWork.fromJson(x))),
      snack: json["Snack"] == null
          ? []
          : List<AfterWork>.from(
          json["Snack"].map((x) => AfterWork.fromJson(x))),
      lunch: json["Lunch"] == null
          ? []
          : List<AfterWork>.from(
          json["Lunch"].map((x) => AfterWork.fromJson(x))),
      afterWork: json["After Work"] == null
          ? []
          : List<AfterWork>.from(
          json["After Work"].map((x) => AfterWork.fromJson(x))),
      dinner: json["Dinner"] == null
          ? []
          : List<AfterWork>.from(
          json["Dinner"].map((x) => AfterWork.fromJson(x))),
    );
  }
}

  class AfterWork {
  String? item1;
  String? item2;

  AfterWork({
    this.item1,
    this.item2,
  });

  factory AfterWork.fromJson(Map<String, dynamic> json) => AfterWork(
    item1: json["item1"],
    item2: json["item2"],
  );

  Map<String, dynamic> toJson() => {
    "item1": item1,
    "item2": item2,
  };
}
