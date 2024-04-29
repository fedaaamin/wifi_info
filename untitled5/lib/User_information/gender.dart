import 'package:flutter/material.dart';
import 'package:untitled5/api/api_post.dart';
import 'package:untitled5/buttons/next_button.dart';
import 'package:untitled5/get-user_info.dart';
import 'package:untitled5/sign%20in/sign_in_google.dart';

import 'age.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

 class _GenderState extends State<Gender> {


  Color buttonColor1 = Color(0xFF790023);
  Color buttonColor2 = Colors.grey;


  _swapColors() {
    setState(() {
      final temp = buttonColor1;
      buttonColor1 = buttonColor2;
      buttonColor2 = temp;
    });
  }

    @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 100,
                ),
                const Text(
                  "TELL US ABOUT YOURSELF",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "TO GIVE YOU A BETTER EXPERIENCE WE NEED",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "TO KNOW YOUR GENDER",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color:buttonColor1,),
                      width: 150,
                      height: 150,
                      child: IconButton(
                        onPressed: () async {

                          _swapColors();
                          try {
                            final dioHelper = DioHelper();

                            final rs = await dioHelper.update(
                                url: "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Trainees/${userId}"
                                , data: {
                              // "traineeId": 31,
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
                            });
                            print(rs.data);
                            print(rs.statusCode);
                          } catch (e) {
                            throw Exception(e.toString());
                          }
                          GetUserInfo();

                          print("=====================================");
                          print(dataMap);
                        },
                        icon: const Icon(
                          Icons.female,
                          size: 100,
                          color: Colors.white,
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color:buttonColor2
                      ),
                      width: 150,
                      height: 150,
                      child: IconButton(
                        onPressed: () async {
                          _swapColors();
                          try {
                            final dioHelper = DioHelper();
                            final rs = await dioHelper.update(
                                url: "http://11172647:60-dayfreetrial@fitnessproject-001-site1.ctempurl.com/Api/Trainees/${userId}"
                                , data: {


                              "gender": 'male',


                            });
                            print(rs.data);
                            print(rs.statusCode);
                          } catch (e) {
                            throw Exception(e.toString());
                          }
                        },
                        icon: const Icon(
                          Icons.male,
                          size: 100,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 30),
            child: NextButton(page: Age()),
          ),
        ),
      );
    }
  }

