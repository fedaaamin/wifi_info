import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

String formatDate(DateTime d) {
  return d.toString().substring(0, 19);
}

class Steps extends StatefulWidget {
  const Steps({super.key});

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
    int currentValue = 350;
    int time = 30;
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Text(
                "TODAY'S ACHIEVEMENTS",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                   ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SleekCircularSlider(
              innerWidget: (_) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currentValue.toString(),
                            style: const TextStyle(
                                fontSize: 30,

                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            " Cal",
                            style: TextStyle(
                              fontSize: 20,

                            ),
                          )
                        ],
                      ),
                      const Text(
                        "Active Calories",
                        style: TextStyle(fontSize: 20,),
                        textAlign: TextAlign.center,
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
                  progressBarWidth: 8,
                  trackWidth: 8,
                  handlerSize: 15,
                ),
                customColors: CustomSliderColors(
                  progressBarColors: [
                    const Color(0xffFA9E97),
                    const Color(0xff92A3FD),
                    Color(0xff9DCEFF),


                  ],
                  trackColor: const Color(0xffDDDADA),
                  dotColor: Colors.transparent,
                ),
              ),
              min: 0,
              max: 500,
              initialValue: currentValue.toDouble(),
              onChange: (double value) {
                currentValue = value.toInt();
              },
            ),
            const SizedBox(
              height: 90,
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
                          const Text(
                            "Steps",
                            style:
                                TextStyle( fontSize: 25),
                          ),
                          Text(
                            _steps.toString(),
                            style:
                                const TextStyle(fontSize: 25, ),
                          ),
                        ],
                      ),
                    );
                  },
                  appearance: CircularSliderAppearance(
                    size: 150,
                    startAngle: 180,
                    angleRange: 360,
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 8,
                      trackWidth: 8,
                      handlerSize: 15,
                    ),
                    customColors: CustomSliderColors(
                      progressBarColors: [
                        const Color(0xffFA9E97),
                        const Color(0xff92A3FD),
                        Color(0xff9DCEFF),

                      ],
                      trackColor: const Color(0xffDDDADA),
                      dotColor: Colors.transparent,
                    ),
                  ),
                  min: 0,
                  max: 9000,
                  initialValue: _steps.toDouble(),
                  onChange: (double value) {},
                ),
                const Spacer(),
                SleekCircularSlider(
                  innerWidget: (_) {
                    return Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Time",
                            style: TextStyle(
                                fontSize: 20,

                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                time.toString(),
                                style: const TextStyle(
                                    fontSize: 30,

                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                " min",
                                style: TextStyle(
                                    fontSize: 20, ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  appearance: CircularSliderAppearance(
                    size: 150,
                    startAngle: 150,
                    angleRange: 360,
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 8,
                      trackWidth: 8,
                      handlerSize: 15,
                    ),
                    customColors: CustomSliderColors(
                      progressBarColors: [
                        const Color(0xffFA9E97),
                        const Color(0xff92A3FD),
                        Color(0xff9DCEFF),

                      ],
                      trackColor: const Color(0xffDDDADA),
                      dotColor: Colors.transparent,
                    ),
                  ),
                  min: 0,
                  max: 60,
                  initialValue: time.toDouble(),
                  onChange: (double value) {
                    time = value.toInt();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
