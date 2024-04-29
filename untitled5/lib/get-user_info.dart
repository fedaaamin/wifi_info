
import 'dart:convert';

import 'package:untitled5/sign%20in/sign_in_google.dart';

import 'api/api_post.dart';
Map<String,dynamic> dataMap={
  "name": "Fedaa Amin",
  "gmail": "fedaa1234amin@gmail.com",
  "gender":
  'female',
  "purpose": "eee",
  "dateOfBirth": "2024-04-25T17:14:42.8830926",
  "height": 150,
  "weight": 30,
  "fitnessLevel": "",
  "requiredCalories": 831,
  "availabaleDays": [],
  "traineeSports": [],
  "traineeFoods": []
};
Future<void> GetUserInfo() async {
  try{
  final dioHelper = DioHelper();
  final  rs=await dioHelper.getData(
      url: "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/GetUserData/${userId}"
      );
  print(rs.data);
  print(rs.statusCode);
 
  print("===================================");
  
  dataMap=json.decode(rs.data);
  
  }catch(e){
    throw Exception(e.toString());
  }

}
class map{
  var gender;
  map({required this.gender});
  map.fromJson(Map<String,dynamic> json)
  {
    gender=json["gender"];
    
  }
  Map<String,dynamic> toJson()
  {
    final Map<String,dynamic> data =new Map<String,dynamic>();
    data["gender"]=this.gender;
    return data;
  }
}