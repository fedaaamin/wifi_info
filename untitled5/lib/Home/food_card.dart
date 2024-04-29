import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final String mealName;
  final String meal;
  const FoodCard({super.key, required this.mealName, required this.meal});

  @override
  State<FoodCard> createState() => _FoodCardState();
}
bool _showOptions = false;
class _FoodCardState extends State<FoodCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 26,
            left: 16,
            right: 16,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _showOptions = !_showOptions;
              });
            },
            child: Container(
              width: 285,
              height: 43,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff505050)
              ),
              child: Row(
                children: [
                  Text(
                    widget.mealName,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 186,),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: .5),
        if (_showOptions)
          Padding(
            padding: const EdgeInsets.only(
                left: 16,
                right: 16
            ),
            child: Container(
              width: 285,
              height: 100,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff505050)
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.meal,
                    style: TextStyle(

                        color: Colors.white
                    ),)
                ],
              ),
            ),
          ),

      ],
    );
  }
}
