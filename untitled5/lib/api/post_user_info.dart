
import 'package:untitled5/User_information/days/day.dart';
import 'package:untitled5/sign%20in/sign_in_google.dart';

import '../User_information/activity.dart';
import '../User_information/age.dart';
import '../User_information/gender.dart';
import '../User_information/goal.dart';
import '../User_information/height.dart';
import '../User_information/weight.dart';
import 'api_post.dart';
String url =
    "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Trainees/${userId}";

Future<void> PostUserInfo() async {
  try{
  final dioHelper = DioHelper();
  final  rs=await dioHelper.update(
      url:"http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Trainees/${userId}",
  data: {
    "name": userName,
    "gmail": userEmail,
    "gender": userGender,
    "purpose": userPurpose,
    "dateOfBirth":userAge?.toIso8601String(),
    "height": userHeight,
    "weight": userWeight,
    "fitnessLevel": userLevel,
    "requiredCalories": 0,
    "availabaleDays": availableDays,
    "traineeSports": [
      1,
      2
    ],
    "traineeFoods": [
      3,
      4
    ]
  });
  print(rs.data);
  print(rs.statusCode);

  print("===================================");


  }catch(e){
    throw Exception(e.toString());
  }

}
