import 'package:flutter/material.dart';

class PersonInfo extends StatefulWidget {
  const PersonInfo({super.key});

  @override
  State<PersonInfo> createState() => _PersonInfoState();
}

class _PersonInfoState extends State<PersonInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1C1C1E),
        appBar: AppBar(
          backgroundColor:  const Color(0xff1C1C1E),
          title: Text(
            "Personal Information",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold

            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color:  Colors.black12
              ),
              child: Center(
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
