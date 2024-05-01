import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  final String title;
  final Widget page;
  const Setting({super.key, required this.title, required this.page});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context) =>widget.page
            )
        );
      },
      child: Column(
        children: [
          Row(
            children: [
              Text(widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15
                ),
              ),
              const Spacer(),
              const Icon(
                  Icons.arrow_forward_ios_outlined,
              color: Colors.white,
                size: 20,
              )
            ],
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: .25,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
