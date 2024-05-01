// import 'package:flutter/material.dart';
// import 'package:sleek_circular_slider/sleek_circular_slider.dart';
//
// class Radial extends StatefulWidget {
//   const Radial({super.key});
//
//   @override
//   State<Radial> createState() => _RadialState();
// }
//
// class _RadialState extends State<Radial> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Expanded(
//         child: Center(
//           child: SleekCircularSlider(
//             min: 0,
//             max: 200,
//             initialValue: 50,
//             onChange: (double value) {
//               // Handle value changes
//             },
//             appearance: CircularSliderAppearance(
//               angleRange: 360,
//               customColors: CustomSliderColors(
//                   progressBarColors: [Color(0xff790023), Colors.white]),
//             ),
//             innerWidget: (double value) {
//               // Customize inner widget (optional)
//               return Center(
//                 child: Text(
//                   '${value.toInt()}',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
