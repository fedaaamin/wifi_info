import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:pedometer/pedometer.dart';

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

class Steps extends StatefulWidget {
  const Steps({Key? key}) : super(key: key);

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;

  int _steps = 0;

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  void onStepCount(StepCount event) {
    print(event);
    setState(() {
      _steps = event.steps;
    });
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    print(event);
  }

  void onStepCountError(error) {
    print('onStepCountError: $error');
    setState(() {
      _steps = 0;
    });
  }

  void initPlatformState() {
    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _pedestrianStatusStream.listen(onPedestrianStatusChanged);

    _stepCountStream = Pedometer.stepCountStream;
    _stepCountStream.listen(onStepCount).onError(onStepCountError);

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SleekCircularSlider(
            innerWidget: (_) {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "",
                      style: TextStyle(
                          color: Colors.white,

                          fontSize: 30
                      ),
                    ),
                    Text(
                      _steps.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              );
            },
            appearance: CircularSliderAppearance(
              size: 200,
              startAngle: 180,
              angleRange: 360,
              customWidths: CustomSliderWidths(
                progressBarWidth: 5,
                trackWidth: 5,
                handlerSize: 15,
              ),
              customColors: CustomSliderColors(
                progressBarColors: [
                  Color(0xff790023),
                  Colors.white,
                ],
                trackColor: Colors.grey,
                dotColor: Colors.transparent,
              ),
            ),
            min: 0,
            max: 10000,
            initialValue: _steps.toDouble(),
            onChange: (double value) {},
          ),
          Row(
            children: [
              SleekCircularSlider(
                innerWidget: (_) {
                  return Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Steps",
                          style: TextStyle(
                            color: Colors.white,

                            fontSize: 30
                          ),
                        ),
                        Text(
                          _steps.toString(),
                          style: TextStyle(
                              fontSize: 30,
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  );
                },
                appearance: CircularSliderAppearance(
                  size: 200,
                  startAngle: 180,
                  angleRange: 360,
                  customWidths: CustomSliderWidths(
                    progressBarWidth: 5,
                    trackWidth: 5,
                    handlerSize: 15,
                  ),
                  customColors: CustomSliderColors(
                    progressBarColors: [
                      Color(0xff790023),
                      Colors.white,
                    ],
                    trackColor: Colors.grey,
                    dotColor: Colors.transparent,
                  ),
                ),
                min: 0,
                max: 10000,
                initialValue: _steps.toDouble(),
                onChange: (double value) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
