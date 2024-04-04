import 'package:flutter/material.dart';
import 'package:untitled5/api/api_post.dart';
import 'package:untitled5/buttons/next_button.dart';
import 'age.dart';
class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool female=false;
  bool gender= true;
  String? text;
  final String url =
      "http://11163230:60-dayfreetrial@fitnessapi-001-site1.itempurl.com/Api/Trainees";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.black,
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              const Text("TELL US ABOUT YOURSELF",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("TO GIVE YOU A BETTER EXPERIENCE WE NEED"

                  ,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("TO KNOW YOUR GENDER"
                ,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 10
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    color: female?const Color(0xFF790023) :Colors.grey
                  ),
                  width: 150,
                  height: 150,

                  child: IconButton(
                    onPressed: () async{
                      setState(() {
                    if(female=gender)
                      {
                        text="female";
                      }
                    });

                      final dioHelper = DioHelper();
                      await dioHelper.postDate(url: url, data: {
                        "trainee":{
                          "gender":text
                        }
                      });
                      },
                    icon:const Icon(Icons.female,
                    size: 100,color: Colors.white,),
                ),
              )
              ),
             const SizedBox(
                height: 30,
              ),
              Center(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: !female?const Color(0xFF790023) :Colors.grey
                    ),
                    width: 150,
                    height: 150,

                    child: IconButton(
                      onPressed: () async{
                        setState(() {
                          female=!gender;
                        });
                        final dioHelper = DioHelper();
                        await dioHelper.postDate(url: url, data: {
                          "trainee":{
                            "gender":"male"
                          }
                        });
                      },
                      icon: const Icon(Icons.male,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  )
              ),

            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(
              right: 10,
              bottom: 30
          ),
          child: NextButton(
              page: Age()
          ),

        ),

      ),
    );
  }
}
