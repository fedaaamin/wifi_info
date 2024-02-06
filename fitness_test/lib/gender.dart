import 'package:fitness_test/age.dart';
import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  bool female=false;
  bool gender= true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:Colors.black,
        body: Center(
          child: Column(
            children: [
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
                    color: female?const Color(0xffE81A55) :Colors.grey
                  ),
                  width: 150,
                  height: 150,

                  child: IconButton(
                    onPressed: (){
                      setState(() {
                     female=gender;
                    });
                      },
                    icon:const Icon(Icons.female,
                    size: 100,),
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
                        color: !female?const Color(0xffE81A55) :Colors.grey
                    ),
                    width: 150,
                    height: 150,

                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          female=!gender;
                        });

                      },
                      icon: const Icon(Icons.male,
                        size: 100,
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(
            right: 10,
            bottom: 30
          ),
          child: FloatingActionButton.extended(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Age()),
              );
            },
            backgroundColor:const Color(0xffE81A55),
            label: const Text("Next  >",
              style: TextStyle(
                  color:Colors.black,
                fontWeight: FontWeight.bold

              ),
            ),
          ),
        ),
      ),
    );
  }
}
