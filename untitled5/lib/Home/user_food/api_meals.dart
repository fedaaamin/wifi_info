import 'dart:convert';

import 'package:untitled5/sign%20in/sign_in_google.dart';

final apiMeals = apiMealsFromJson(
    "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Diet/$userId");

ApiMeals apiMealsFromJson(String str) => ApiMeals.fromJson(json.decode(str));

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
