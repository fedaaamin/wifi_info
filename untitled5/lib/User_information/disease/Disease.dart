import 'package:flutter/material.dart';
import 'package:untitled5/Home/nav_buttons.dart';
import 'package:untitled5/User_information/disease/button.dart';
import 'package:untitled5/buttons/next_button.dart';

import '../age.dart';

class Disease extends StatefulWidget {
  const Disease({super.key});

  @override
  State<Disease> createState() => _DiseaseState();
}

class _DiseaseState extends State<Disease> {
  bool click=true;
  bool unClick=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          TextButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  const Age()),
            );
          },
            child: Text("SKIP >",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color:Colors.white
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text("DO YOU SUFFER FROM",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text("ANY DISEASE?, CHOOSE IT"

              ,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("THIS HELPS US KEEP YOU HEALTHY"
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
            DiseaseButton(
                text: "Diabetes"
            ),
            const SizedBox(
              height: 50,
            ),
            DiseaseButton(
                text: "Pressure "
            ),
            SizedBox(
              height: 50,
            ),
            // DiseaseButton(
            //     text: "Liver "
            // )
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(88, 36),
                  backgroundColor: click?const Color(0xff3B3B3B):const Color(0xFF790023),
                  textStyle: const TextStyle(fontSize: 20),
                  padding: const EdgeInsets.only(
                      left: 72,
                      right: 72,
                      top: 23,
                      bottom: 23
                  ),
                ),

                onPressed: () async{
                  setState(() {
                    click=unClick;

                  });
                },
                child:
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                  "Liver",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      //fontSize: 20,
                      color: Colors.white,
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
        child: NextButton(
            page: NavButtons()
        ),

      ),

    );
  }
}
