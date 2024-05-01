 import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
class Radial extends StatefulWidget {
  const Radial({super.key});

  @override
  State<Radial> createState() => _RadialState();
}

class _RadialState extends State<Radial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        angle: 90,
                        axisValue: 5,
                        positionFactor: 0.2,
                        widget: Text('50%',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight
                                    .bold,
                                color: Color(0xFFCC2B5E)))
                    ),
                    GaugeAnnotation(
                        angle: 90,
                        axisValue: 5,
                        positionFactor: 1.2,
                        widget: Text('Volume',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight
                                    .bold,
                                color: Color(0xFFCC2B5E)))
                    )
                  ]
              )
            ]
        )
      ),
    );
  }
}
